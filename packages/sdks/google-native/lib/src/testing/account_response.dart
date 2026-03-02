// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Identifies an account and how to log into it.
class AccountResponse {
  /// An automatic google login account.
  final pulumi.Input<Map<String, dynamic>> googleAuto;

  /// Creates a new [AccountResponse].
  /// [googleAuto] An automatic google login account.
  AccountResponse({
    required this.googleAuto,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'googleAuto': googleAuto,
    };
  }

  factory AccountResponse.fromMap(Map<String, dynamic> map) {
    return AccountResponse(
      googleAuto: ((map['googleAuto'] as Map).cast<String, dynamic>()).input(),
    );
  }
}

