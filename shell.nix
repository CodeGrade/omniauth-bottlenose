with import <nixpkgs> {};
let
  ruby = ruby_2_6;
  gem_setup = ''
    mkdir -p .nix-gems
    export GEM_HOME=$PWD/.nix-gems
    export GEM_PATH=$GEM_HOME
    export PATH=$GEM_HOME/bin:$PATH
    gem install --conservative bundler
  '';
in mkShell {
  name = "omniauth-bottlenose";
  buildInputs = [
    ruby.devEnv
    bundler
    curl.dev
    pcre
    nodejs
  ];

  shellHook = ''
    ${gem_setup}
  '';
}
