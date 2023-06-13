import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void showMessage(String message) {
  Fluttertoast.showToast(
    msg: message,
    backgroundColor: Color.fromARGB(255, 35, 241, 176),
    textColor: Colors.white,
    fontSize: 16.0,
  );
}

showLoaderDialog(BuildContext context) {
  AlertDialog alert = AlertDialog(
    content: Builder(builder: (context) {
      return SizedBox(
        width: 100,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const CircularProgressIndicator(
              color: Color.fromARGB(255, 85, 225, 160),
            ),
            const SizedBox(
              height: 18.0,
            ),
            Container(
                margin: const EdgeInsets.only(left: 7),
                child: const Text("Loading...")),
          ],
        ),
      );
    }),
  );
  showDialog(
    barrierDismissible: false,
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

String getMessageFromErrorCode(String errorCode) {
  switch (errorCode) {
    case "Lỗi":
      return "Email đã được sử dụng. Trang đăng nhập.";
    case "account-exists-with-different-credential":
      return "Email đã được sử dụng.Trang đăng nhập.";
    case "Lỗi":
      return "Email đã được sử dụng. Trang đăng nhập.";
    case "Lỗi":
    case "Lỗi":
      return "Sai mật khẩu ";
    case "Lỗi":
      return "Không tìm thấy người dùng email này.";
    case "Lỗi":
      return "Không tìm thấy người dùng nào với email này.";
    case "Lỗi":
      return "Người dùng bị vô hiệu hóa.";
    case "Lỗi":
      return "Người dùng bị vô hiệu hóa";
    case "Lỗi":
      return "Quá nhiều yêu cầu đăng nhập tài khoản này.";
    case "hoạt động không được phép":
      return "Quá nhiều yêu cầu đăng nhập tài khoản này.";
    case "hoạt động không được phép":
      return "Quá nhiều yêu cầu đăng nhập tài khoản này.";
    case "hoạt động không được phép":
      return "Địa chỉ email không hợp lệ.";
    case "Lỗi":
      return "Địa chỉ email không hợp lệ.";
    default:
      return "Đăng nhập thất bại. Vui lòng thử lại.";
  }
}

bool loginVaildation(String email, String password) {
  if (email.isEmpty && password.isEmpty) {
    showMessage("Cả hai trống");
    return false;
  } else if (email.isEmpty) {
    showMessage("Email trống");
    return false;
  } else if (password.isEmpty) {
    showMessage("Mật khẩu trống");
    return false;
  } else {
    return true;
  }
}

bool signUpVaildation(
    String email, String password, String name, String phone) {
  if (email.isEmpty && password.isEmpty && name.isEmpty && phone.isEmpty) {
    showMessage("Tất cả đều trống");
    return false;
  } else if (name.isEmpty) {
    showMessage("Tên trống");
    return false;
  } else if (email.isEmpty) {
    showMessage("Email trống");
    return false;
  } else if (phone.isEmpty) {
    showMessage("Điện thoại trống");
    return false;
  } else if (password.isEmpty) {
    showMessage("Mật khẩu trống");
    return false;
  } else {
    return true;
  }
}
