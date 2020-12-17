// enum is used to standardize values to avoid mistakes due to mistyping
enum PaymentStatus { notPaid, OTPSent, Paid }

void enum_class() {
  final status = PaymentStatus.notPaid;

  switch(status) {
    case PaymentStatus.notPaid: // do something here
  }
}
