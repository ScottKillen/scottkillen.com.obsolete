# scottkillen.com

A [Jekyll](https://jekyllrb.com/) powered site.

## Installation

* On [Ubuntu](https://ubuntu.com/), use the [apt package manager](https://ubuntu.com/server/docs/package-management) to install the [Ruby](https://www.ruby-lang.org/en/) environment (as root).

    ```bash
    sudo apt-get install ruby-full build-essential zlib1g-dev
    ```

* Set up the Ruby environment for your personal login.

    ```bash
    echo '# Install Ruby Gems to ~/gems' >> ~/.bashrc
    echo 'export GEM_HOME="$HOME/gems"' >> ~/.bashrc
    echo 'export PATH="$HOME/gems/bin:$PATH"' >> ~/.bashrc
    source ~/.bashrc
    ```

* Install Jekyll and Bundler as Ruby Gems.

    ```bash
    gem install jekyll bundler
    ```

* Clone this project.

    ```bash
    git clone git@github.com:scottkillen-pages/scottkillen.com.git
    ```

* Change to the project folder and install necessary gems using bundler:

    ```bash
    cd scottkillen.com
    bundle install
    ```

## Usage

Build the site:

```bash
bundle exec jekyll build
```

Serve the site:

```bash
bundle exec jekyll serve
```

## License

[Apache, v2.0](https://www.apache.org/licenses/LICENSE-2.0)
