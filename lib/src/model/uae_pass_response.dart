enum UaePassStatus { success, unknown, cancelled, cancelledOnApp }

class UaePassResult {
  UaePassStatus status = UaePassStatus.cancelled;
  String? code;
  String? state;
}

extension UaePassMessage on UaePassStatus {
  String get errorMessage {
    switch (this) {
      case UaePassStatus.success:
        return 'Succeeded';
      case UaePassStatus.unknown:
        return 'Something went wrong during the login, please try again later!';
      case UaePassStatus.cancelled:
        return 'User cancelled the login';
      case UaePassStatus.cancelledOnApp:
        return 'You have exited the notification request. Please restart the process';
    }
  }
}
