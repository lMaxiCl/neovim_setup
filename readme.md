# Neovim Configuration by lMaxiCl

## Handy Commands
- `:PackerSync`: Synchronize plugins
- `:LspInstall`: Install Language Server Protocol servers

## Prerequisites
- Neovim

## Installation

### Linux/Mac

1. **Copy Repository:**
   - Copy this repository to your Neovim configuration files.

     ```bash
     git clone https://github.com/lMaxiCl/neovim_setup.git $HOME/.config/nvim
     ```

     Make sure to replace `$HOME/.config/nvim` with the appropriate path if your configuration directory is different.

     **OR**

2. **Manual Directory Creation:**
   - Create the configuration directory, navigate into it, and clone the repository.

     ```bash
     mkdir -p $HOME/.config/nvim
     cd $HOME/.config/nvim
     git clone https://github.com/lMaxiCl/neovim_setup.git .
     ```

### Windows

1. **Copy Repository:**
   - Copy this repository to your Neovim configuration files.

     ```cmd
     git clone https://github.com/lMaxiCl/neovim_setup.git %USERPROFILE%\AppData\Local\nvim
     ```

     Make sure to replace `%USERPROFILE%\AppData\Local\nvim` with the appropriate path if your configuration directory is different.

     **OR**

2. **Manual Directory Creation:**
   - Create the configuration directory, navigate into it, and clone the repository.

     ```cmd
     mkdir %USERPROFILE%\AppData\Local\nvim
     cd %USERPROFILE%\AppData\Local\nvim
     git clone https://github.com/lMaxiCl/neovim_setup.git .
     ```

## Usage
1. **Open Neovim:**
   - Open Neovim using your preferred method.

2. **Synchronize Plugins:**
   - Run `:PackerSync` to synchronize and install plugins.

3. **Install Language Servers:**
   - Run `:LspInstall` to install Language Server Protocol servers.

## Additional Notes
- Customize the configuration according to your preferences by editing the files in the `nvim` directory.
- Explore Neovim's documentation and plugins for further customization and optimization.

# Neovim Shortcuts I Use Most

## Netrw File Explorer
- Open Netrw: Press space, then type `pv`

## Fugitive (Git)
- Open Fugitive (Git): Press space, then type `gs`

## Search
- Search (Forward): Press space, then type `ff`
- Search (Backward): Press space, then type `af`

## Autocompletion Selection
- Confirm Autocompletion: Press `Ctrl` + `y`

## Error Message Viewer
- View Error Messages: Press `gl`

Feel free to reach out if you have any questions or need assistance!

guided by ThePrimeagen youtube tutorial: "https://youtu.be/w7i4amO_zaE"
