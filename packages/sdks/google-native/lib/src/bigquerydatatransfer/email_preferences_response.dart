// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents preferences for sending email notifications for transfer run events.
class EmailPreferencesResponse {
  /// If true, email notifications will be sent on transfer run failures.
  final pulumi.Input<bool> enableFailureEmail;

  /// Creates a new [EmailPreferencesResponse].
  /// [enableFailureEmail] If true, email notifications will be sent on transfer run failures.
  const EmailPreferencesResponse({
    required this.enableFailureEmail,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableFailureEmail': enableFailureEmail,
    };
  }

  factory EmailPreferencesResponse.fromMap(Map<String, dynamic> map) {
    return EmailPreferencesResponse(
      enableFailureEmail: pulumi.Input.fromValue(map['enableFailureEmail'] as bool),
    );
  }
}
