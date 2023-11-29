#!/usr/bin/env fish

# Install the need packages for asdf
#
sudo pacman -S --needed --noconfirm base-devel ncurses glu mesa wxgtk2 libpng libssh unixodbc libxslt fop

# Clone the ASDF pacages
if not test -d "$HOME/.asdf";
  git clone https://github.com/asdf-vm/asdf.git $HOME/.asdf --branch v0.10.2
end


if not grep -q "source $HOME/.asdf/asdf.fish" $HOME/.config/fish/config.fish;
  echo source ~/.asdf/asdf.fish >> $HOME/.config/fish/config.fish
  echo "Ran 1"
end
# Create the completions path
if not test -d "$HOME/.config/fish/completions"
    mkdir -p $HOME/.config/fish/completions
    echo "Ran 2"
end


# Link the completions
if  not test -f "$HOME/.config/fish/completions/asdf.fish";
  ln -s $HOME/.asdf/completions/asdf.fish $HOME/.config/fish/completions
end

# Source the fish config
if test -f "$HOME/.config/fish/config.fish";
  source $HOME/.asdf/asdf.fish
end

asdf plugin add erlang https://github.com/asdf-vm/asdf-erlang.git

asdf install erlang 24.3.4
asdf global erlang 24.3.4

asdf plugin-add elixir https://github.com/asdf-vm/asdf-elixir.git

asdf install elixir 1.13.3-otp-24

asdf global elixir 1.13.3-otp-24

asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git

asdf install nodejs 16.15.1

asdf global nodejs 16.15.1

mix local.hex --force
mix local.rebar --force

mix archive.install hex phx_new --force