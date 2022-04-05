# NguVim
> Là 1 Project custom NeoVim đơn giản do mình thực hiện dùng để code C++, Python và làm Web.

## Requirements
- **_Neovim_** phiên bản mới nhất.
- **_Packer.nvim_**
  - Tải bằng Linux: 
  ```bash
  git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
  ```
  - Tải bằng Windows: (trong Powershell)
  ```bash
  git clone https://github.com/wbthomason/packer.nvim "$env:LOCALAPPDATA\nvim-data\site\pack\packer\start\packer.nvim"
  ```
- **_Node.js_** phiên bản mới nhất.
  - Đối với Linux thì phải install cả 2 package là nodejs và npm.
  - Đối với Windows thì install [tại đây](https://nodejs.org/en/download/) (đã bao gồm npm)

- **_Python support_** cho Neovim. Tải bằng cách:
```bash
pip install neovim 
```
- **_gcc, g++ support_**. Linux thì có sẵn. Còn Windows có thể tải **_Strawberry Perl_** hoặc **_MingW_**.
- **_ctags_**. Linux có thể dùng Package Manager để tải, còn Windows phải thông qua **_scoop_** bằng cách:
```bash 
scoop bucket add extras && scoop install universal-ctags
```


## Tiến độ hiện tại: (70%)
- [x] Các Plugins cơ bản 
- [x] Lazy load cơ bản
- [x] Setup cho C++ và Python
- [ ] Setup cho Web Development

# Reference
- [Nix-darwin-Nvim](https://github.com/shaunsingh/nix-darwin-dotfiles/tree/2a2f1e0d128535d05ab92f1a23b184159b81ab23/.config/nvim)
- [Neovim-from-scratch](https://github.com/LunarVim/Neovim-from-scratch)
- [Neil Sabde](https://www.youtube.com/watch?v=r3NOB8UjIPc&list=PLPDVgSbOnt7LXQ8DTzu37UwCpA0elyD0V)

