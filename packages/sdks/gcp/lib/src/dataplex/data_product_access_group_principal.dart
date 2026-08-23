// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataProductAccessGroupPrincipal {
  /// Email of the Google Group.
  final pulumi.Input<String>? googleGroup;
  /// Specifies the email of the producer service account.
  final pulumi.Input<String>? serviceAccount;

  /// Creates a new [DataProductAccessGroupPrincipal].
  /// [googleGroup] Email of the Google Group.
  /// [serviceAccount] Specifies the email of the producer service account.
  const DataProductAccessGroupPrincipal({
    this.googleGroup,
    this.serviceAccount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'googleGroup': ?googleGroup,
      'serviceAccount': ?serviceAccount,
    };
  }

  factory DataProductAccessGroupPrincipal.fromMap(Map<String, dynamic> map) {
    return DataProductAccessGroupPrincipal(
      googleGroup: (() { final guardedValue = map['googleGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceAccount: (() { final guardedValue = map['serviceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
