# Summary of Key Mappings in Vim Configuration for Linux Kernel C Development

Below is a comprehensive list of key mappings configured in Vim to enhance productivity while developing the Linux Kernel using the C programming language.

## Leader Key

- **Leader Key:** `,`
  
  The leader key is set to a comma (`,`). It is used as a prefix for custom shortcuts.

## Key Mappings

| **Key Combination** | **Mode**         | **Action**                                      |
|---------------------|------------------|-------------------------------------------------|
| `<F2>`              | Normal, Insert   | Save the current file                           |
| `<F4>`              | Normal           | Switch between `.c` and `.h` files              |
| `<F5>`              | Normal           | Recreate the tags file                          |
| `<F6>`              | Normal           | Create a Doxygen comment                        |
| `<F7>`              | Normal           | Build the project using `make`                  |
| `<Shift-F7>`        | Normal           | Clean and build with `make clean all`           |
| `<F12>`             | Normal           | Go to the definition of the symbol under cursor  |
| `<Leader>n`         | Normal           | Toggle NERDTree                                 |
| `<Leader>t`         | Normal           | Toggle Tagbar                                   |
| `<Leader>g`         | Normal           | Open Git status (`vim-fugitive`)                |
| `<Leader>f`         | Normal           | Open FZF file finder                             |
| `<Leader>b`         | Normal           | Open FZF buffer list                             |
| `<C-n>`             | Normal           | Toggle NERDTree                                 |
| `<C-\>s`            | Normal           | Find symbol with Cscope                          |
| `<C-\>g`            | Normal           | Find global definition with Cscope               |
| `<C-\>c`            | Normal           | Find functions calling the current function with Cscope |
| `<C-\>t`            | Normal           | Find text with Cscope                            |
| `<C-\>e`            | Normal           | Find egrep pattern with Cscope                   |
| `<C-\>f`            | Normal           | Find file with Cscope                            |

## Detailed Description of Key Mappings

- **Save File:**
  - `<F2>` in Normal or Insert mode to save the current file.

- **Switch File:**
  - `<F4>` in Normal mode to switch between `.c` and `.h` files.

- **Recreate Tags:**
  - `<F5>` in Normal mode to regenerate the tags file, aiding in code navigation.

- **Create Doxygen Comment:**
  - `<F6>` in Normal mode to quickly create a Doxygen comment.

- **Build Project:**
  - `<F7>` in Normal mode to build the project using `make`.
  - `<Shift-F7>` in Normal mode to clean and build the project with `make clean all`.

- **Go to Definition:**
  - `<F12>` in Normal mode to navigate to the definition of the symbol under the cursor.

- **NERDTree (File Explorer):**
  - `<Leader>n` (`,n`) in Normal mode to toggle NERDTree.
  - `<C-n>` in Normal mode to toggle NERDTree.

- **Tagbar (Tag Viewer):**
  - `<Leader>t` (`,t`) in Normal mode to toggle Tagbar.

- **Git Integration:**
  - `<Leader>g` (`,g`) in Normal mode to open Git status using the `vim-fugitive` plugin.

- **FZF (Fuzzy Finder):**
  - `<Leader>f` (`,f`) in Normal mode to open the FZF file finder.
  - `<Leader>b` (`,b`) in Normal mode to open the FZF buffer list.
  - `<Leader>g` (`,g`) in Normal mode to open the FZF Git files list.

- **Cscope:**
  - `<C-\>s` in Normal mode to find symbols.
  - `<C-\>g` in Normal mode to find global definitions.
  - `<C-\>c` in Normal mode to find functions that call the current function.
  - `<C-\>t` in Normal mode to find text.
  - `<C-\>e` in Normal mode to find egrep patterns.
  - `<C-\>f` in Normal mode to find files.

## Notes

- **Leader Key:** The leader key is set to a comma (`,`). You can change the leader key by modifying the following lines in your `~/.vimrc`:
  ```vim
  let mapleader = ","
  let maplocalleader = ","
  ```
**Normal vs. Insert Mode**: Some key mappings work in both Normal and Insert modes (e.g., <F2> to save the file), while others are exclusive to Normal mode.


---
---
---
---
---


# Tổng Hợp Các Phím Tắt Trong Cấu Hình Vim cho Deveploper Linux Kernel

Dưới đây là danh sách các phím tắt được cấu hình trong Vim nhằm nâng cao hiệu suất làm việc khi phát triển Linux Kernel bằng ngôn ngữ C.

## Leader Key

- **Leader Key:** `,`
  
  Leader key được đặt là dấu phẩy (`,`), dùng để tạo các phím tắt tùy chỉnh.

## Bảng Phím Tắt

| **Phím Tắt**     | **Chế Độ**       | **Hành Động**                                      |
|------------------|------------------|----------------------------------------------------|
| `<F2>`           | Normal, Insert   | Lưu file hiện tại                                   |
| `<F4>`           | Normal           | Chuyển đổi giữa file `.c` và `.h`                  |
| `<F5>`           | Normal           | Tạo lại file tags                                   |
| `<F6>`           | Normal           | Tạo comment Doxygen                                 |
| `<F7>`           | Normal           | Biên dịch dự án với `make`                          |
| `<Shift-F7>`     | Normal           | Clean và build với `make clean all`                 |
| `<F12>`          | Normal           | Đi tới định nghĩa của biểu tượng dưới con trỏ         |
| `<Leader>n`      | Normal           | Bật/tắt NERDTree                                    |
| `<Leader>t`      | Normal           | Bật/tắt Tagbar                                      |
| `<Leader>g`      | Normal           | Mở trạng thái Git (`vim-fugitive`)                  |
| `<Leader>f`      | Normal           | Mở tìm kiếm file với FZF                             |
| `<Leader>b`      | Normal           | Mở danh sách buffer với FZF                           |
| `<C-n>`          | Normal           | Bật/tắt NERDTree                                    |
| `<C-\>s`         | Normal           | Tìm symbol với Cscope                                |
| `<C-\>g`         | Normal           | Tìm định nghĩa toàn cầu với Cscope                    |
| `<C-\>c`         | Normal           | Tìm các hàm gọi hàm hiện tại với Cscope               |
| `<C-\>t`         | Normal           | Tìm text với Cscope                                   |
| `<C-\>e`         | Normal           | Tìm pattern egrep với Cscope                          |
| `<C-\>f`         | Normal           | Tìm file với Cscope                                   |

## Mô Tả Chi Tiết Các Phím Tắt

- **Lưu File:**
  - `<F2>` trong chế độ Normal hoặc Insert để lưu file hiện tại.

- **Chuyển Đổi File:**
  - `<F4>` trong chế độ Normal để chuyển đổi giữa file `.c` và `.h`.

- **Tạo Lại Tags:**
  - `<F5>` trong chế độ Normal để tái tạo file tags, hỗ trợ cho việc điều hướng mã nguồn.

- **Tạo Comment Doxygen:**
  - `<F6>` trong chế độ Normal để tạo comment Doxygen nhanh chóng.

- **Biên Dịch Dự Án:**
  - `<F7>` trong chế độ Normal để biên dịch dự án sử dụng `make`.
  - `<Shift-F7>` trong chế độ Normal để clean và build lại dự án với `make clean all`.

- **Đi Tới Định Nghĩa:**
  - `<F12>` trong chế độ Normal để đi tới định nghĩa của biểu tượng dưới con trỏ.

- **NERDTree (File Explorer):**
  - `<Leader>n` (``,`n`) trong chế độ Normal để bật/tắt NERDTree.
  - `<C-n>` trong chế độ Normal để bật/tắt NERDTree.

- **Tagbar (Tag Viewer):**
  - `<Leader>t` (``,`t`) trong chế độ Normal để bật/tắt Tagbar.

- **Git Integration:**
  - `<Leader>g` (``,`g`) trong chế độ Normal để mở trạng thái Git thông qua plugin `vim-fugitive`.

- **FZF (Fuzzy Finder):**
  - `<Leader>f` (``,`f`) trong chế độ Normal để mở tìm kiếm file.
  - `<Leader>b` (``,`b`) trong chế độ Normal để mở danh sách buffer.
  - `<Leader>g` (``,`g`) trong chế độ Normal để mở danh sách file Git.

- **Cscope:**
  - `<C-\>s` trong chế độ Normal để tìm symbol.
  - `<C-\>g` trong chế độ Normal để tìm định nghĩa toàn cầu.
  - `<C-\>c` trong chế độ Normal để tìm các hàm gọi hàm hiện tại.
  - `<C-\>t` trong chế độ Normal để tìm text.
  - `<C-\>e` trong chế độ Normal để tìm pattern egrep.
  - `<C-\>f` trong chế độ Normal để tìm file.

## Lưu ý

- **Leader Key:** Leader key được thiết lập là dấu phẩy (`,`). Bạn có thể thay đổi leader key theo ý thích bằng cách chỉnh sửa dòng:
  ```vim
  let mapleader = ","
  let maplocalleader = ","
  ```

- **Chế Độ Normal vs. Insert**: Một số phím tắt hoạt động trong cả chế độ Normal và Insert (ví dụ: <F2> để lưu file), trong khi các phím tắt khác chỉ hoạt động trong chế độ Normal.