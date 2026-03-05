// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Message to capture group information
class GoogleCloudBeyondcorpPartnerservicesV1alphaGroup {
  /// The group email id
  final pulumi.Input<String>? email;
  /// Google group id
  final pulumi.Input<String>? id;

  /// Creates a new [GoogleCloudBeyondcorpPartnerservicesV1alphaGroup].
  /// [email] The group email id
  /// [id] Google group id
  GoogleCloudBeyondcorpPartnerservicesV1alphaGroup({
    this.email,
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': ?email,
      'id': ?id,
    };
  }

  factory GoogleCloudBeyondcorpPartnerservicesV1alphaGroup.fromMap(Map<String, dynamic> map) {
    return GoogleCloudBeyondcorpPartnerservicesV1alphaGroup(
      email: (() { final guardedValue = map['email']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

