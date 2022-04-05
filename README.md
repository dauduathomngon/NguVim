# NguVim
> Là 1 Project custom NeoVim đơn giản do mình thực hiện dùng để code C++, Python và làm Web.

## Requirements
- **_Neovim_** phiên bản mới nhất.
- **_Packer.nvim_**
  - Tải bằng Linux: 

  ```bash
  git clone --depth 1 https://github.com/wbthomason/packer.nvim\ ~/.local/share/nvim/site/pack/packer/start/packer.nvim
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

- **_Pyright_** là một language server dành cho Python.

```bash
npm i -g pyright
```

- **_Clangd_** là một language server dành cho C++, C. Linux cài thông qua Package Mangager. Windows cài qua scoop.

```bash
scoop install clangd
```

- **_Tsserver_** là một language server dành cho Javascript và Typescript. 

```bash
npm install -g typescript typescript-language-server
```

- **_ccsls và html_** là 2 language server dành cho 2 ngôn ngữ cùng tên :>

```bash
npm i -g vscode-langservers-extracted
```

- Và cuối cùng là một chút may mắn, do mình còn khá là Newbie nên có thể sẽ bị bug và lỗi trên máy bạn :< , nhưng nếu có lỗi thì cứ liên hệ mình hoặc tạo 1 issues trên Github.

## Cách cài đặt 

- Đối với Windows: 

```bash
git clone https://github.com/dauduathomngon/NguVim.git ~/AppData/Local/nvim
``` 

- Đối với Linux: 
```bash
git clone https://github.com/dauduathomngon/NguVim.git ~/.config/nvim
```

## Các tính năng của NguVim.

- Được tối ưu 1 chút nhờ **_Lazy load_** cơ bản: 
<img src="/img/1.gif">
> Khởi động cùng với 44 Plugins trong 54.1 ms (Ở các lần sau sẽ nhanh hơn do được lưu cache) 

> Lưu ý đây là benchmark trên máy mình nên nó sẽ khác nhau trễn mỗi mày, ngoài ra còn phụ thuộc vào hệ điều hành và terminal NeoVim sử dụng.

- Sử dụng **_theme Onedark_** khá là nổi tiếng.

> Mình hiện tại đang tìm hiểu về cách install thêm nhiều theme và chuyển qua lại giữa các theme, nhưng với sự lười và hơi ngu của mình thì có thể nó sẽ xuất hiện về sau hoặc không bao giờ xuất hiện :<.

> Ngoài ra theme này còn hỗ trợ đổi màu hehe.

<img src= "/img/2.gif">

## Tiến độ hiện tại: (70%)
- [x] Các Plugins cơ bản 
- [x] Lazy load cơ bản
- [x] Setup cho C++ và Python
- [ ] Setup cho Web Development

# Reference
- [Nix-darwin-Nvim](https://github.com/shaunsingh/nix-darwin-dotfiles/tree/2a2f1e0d128535d05ab92f1a23b184159b81ab23/.config/nvim)
- [Neovim-from-scratch](https://github.com/LunarVim/Neovim-from-scratch)
- [Neil Sabde](https://www.youtube.com/watch?v=r3NOB8UjIPc&list=PLPDVgSbOnt7LXQ8DTzu37UwCpA0elyD0V)

