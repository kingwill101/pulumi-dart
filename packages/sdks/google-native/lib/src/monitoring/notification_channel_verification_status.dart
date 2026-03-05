/// Indicates whether this channel has been verified or not. On a ListNotificationChannels or GetNotificationChannel operation, this field is expected to be populated.If the value is UNVERIFIED, then it indicates that the channel is non-functioning (it both requires verification and lacks verification); otherwise, it is assumed that the channel works.If the channel is neither VERIFIED nor UNVERIFIED, it implies that the channel is of a type that does not require verification or that this specific channel has been exempted from verification because it was created prior to verification being required for channels of this type.This field cannot be modified using a standard UpdateNotificationChannel operation. To change the value of this field, you must call VerifyNotificationChannel.
enum NotificationChannelVerificationStatus {
  verificationStatusUnspecified("VERIFICATION_STATUS_UNSPECIFIED"),
  unverified("UNVERIFIED"),
  verified("VERIFIED");

  const NotificationChannelVerificationStatus(this.wireValue);
  final String wireValue;

  static NotificationChannelVerificationStatus fromValue(String value) {
    for (final item in NotificationChannelVerificationStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NotificationChannelVerificationStatus value: $value');
  }
}

