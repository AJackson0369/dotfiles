#!/usr/bin/env fish

sudo pacman -S --noconfirm --needed libyaml

# Clone the ASDF pacages
if not test -d "$HOME/.asdf";
  git clone https://github.com/asdf-vm/asdf.git $HOME/.asdf --branch v0.10.0
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

asdf plugin add ruby https://github.com/asdf-vm/asdf-ruby.git

asdf install ruby 3.2.0

asdf global ruby 3.2.0

gem install rails
