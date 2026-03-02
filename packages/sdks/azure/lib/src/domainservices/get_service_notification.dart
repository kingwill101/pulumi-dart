// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServiceNotification {
  /// A list of additional email addresses to notify when there are alerts in the managed domain.
  final pulumi.Input<List<String>> additionalRecipients;
  /// Whethermembers of the _AAD DC Administrators_ group are notified when there are alerts in the managed domain.
  final pulumi.Input<bool> notifyDcAdmins;
  /// Whether all Global Administrators are notified when there are alerts in the managed domain.
  final pulumi.Input<bool> notifyGlobalAdmins;

  /// Creates a new [GetServiceNotification].
  /// [additionalRecipients] A list of additional email addresses to notify when there are alerts in the managed domain.
  /// [notifyDcAdmins] Whethermembers of the _AAD DC Administrators_ group are notified when there are alerts in the managed domain.
  /// [notifyGlobalAdmins] Whether all Global Administrators are notified when there are alerts in the managed domain.
  GetServiceNotification({
    required this.additionalRecipients,
    required this.notifyDcAdmins,
    required this.notifyGlobalAdmins,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalRecipients': additionalRecipients,
      'notifyDcAdmins': notifyDcAdmins,
      'notifyGlobalAdmins': notifyGlobalAdmins,
    };
  }

  factory GetServiceNotification.fromMap(Map<String, dynamic> map) {
    return GetServiceNotification(
      additionalRecipients: ((map['additionalRecipients'] as List).cast<String>()).input(),
      notifyDcAdmins: (map['notifyDcAdmins'] as bool).input(),
      notifyGlobalAdmins: (map['notifyGlobalAdmins'] as bool).input(),
    );
  }
}

