// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataTransferConfigEmailPreferences {
  /// If true, email notifications will be sent on transfer run failures.
  final pulumi.Input<bool> enableFailureEmail;

  /// Creates a new [DataTransferConfigEmailPreferences].
  /// [enableFailureEmail] If true, email notifications will be sent on transfer run failures.
  DataTransferConfigEmailPreferences({
    required this.enableFailureEmail,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableFailureEmail': enableFailureEmail,
    };
  }

  factory DataTransferConfigEmailPreferences.fromMap(Map<String, dynamic> map) {
    return DataTransferConfigEmailPreferences(
      enableFailureEmail: pulumi.Input.fromValue(map['enableFailureEmail'] as bool),
    );
  }
}

