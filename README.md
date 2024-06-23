# Học về Swift Package Manager

### Ghi chú
- Học về SPM là bước đầu cho việc ứng dụng Modular Architecture
- Package có thể phân phối qua private repo bình thường (với account Git đã được đăng nhập vào Xcode)
- TODO: Tìm hiểu về 2 dạng của SPM: Library, Executable
- TODO: Tìm hiểu về Target executable và cách phân phối .xcframework thông qua SPM
- TODO: Tìm hiểu về cách viết DocC cho thư viện

### Tại sao cần học để tự mình viết Package
- Tính tái sử dụng cao, chia sẻ code giữa nhiều project
- Dễ dàng cập nhật và phân phối
- Làm việc nhóm hiệu quả, các phần của project được tách rời: về phía cá nhân thì làm việc độc lập trên mỗi Package không bị conflict, về phía tập thể thì các Package có thể dễ dàng tích hợp và sử dụng với nhau
- Cải thiện tốc độ build
- Giải quyết vấn đề không bao giờ cũ của lập trình: Dependency - quản lý phụ thuộc
- Sử dụng Package còn giúp việc chọn những phần nào được bộc lộ (public) dễ dàng hơn, người sử dụng Package biết về các phần code mà họ có thể sử dụng tránh được tình trạng overload khi đọc code
- Tính bảo mật khi phân phối Packge chứa binary form (.xcframework)
