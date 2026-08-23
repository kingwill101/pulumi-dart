// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Message that should be set in case of a Deny Action.
class GoogleCloudApigeeV1SecurityActionDeny {
  /// Optional. The HTTP response code if the Action = DENY.
  final pulumi.Input<int>? responseCode;

  /// Creates a new [GoogleCloudApigeeV1SecurityActionDeny].
  /// [responseCode] Optional. The HTTP response code if the Action = DENY.
  const GoogleCloudApigeeV1SecurityActionDeny({
    this.responseCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'responseCode': ?responseCode,
    };
  }

  factory GoogleCloudApigeeV1SecurityActionDeny.fromMap(Map<String, dynamic> map) {
    return GoogleCloudApigeeV1SecurityActionDeny(
      responseCode: (() { final guardedValue = map['responseCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
