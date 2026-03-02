// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Ec2CredentialV3 resources.
class Ec2CredentialV3State {
  /// contains an EC2 credential access UUID
  final pulumi.Input<String>? access;
  /// The ID of the project the EC2 credential is created
  /// for and that authentication requests using this EC2 credential will
  /// be scoped to. Only administrative users can specify a project ID different
  /// from the current auth scope.
  final pulumi.Input<String>? projectId;
  /// The region in which to obtain the V3 Keystone client.
  /// If omitted, the `region` argument of the provider is used. Changing this
  /// creates a new EC2 credential.
  final pulumi.Input<String>? region;
  /// contains an EC2 credential secret UUID
  final pulumi.Input<String>? secret;
  /// contains an EC2 credential trust ID scope
  final pulumi.Input<String>? trustId;
  /// The ID of the user the EC2 credential is created for.
  /// Only administrative users can specify a user ID different from the current
  /// auth scope.
  final pulumi.Input<String>? userId;

  /// Creates a new [Ec2CredentialV3State].
  /// [access] contains an EC2 credential access UUID
  /// [projectId] The ID of the project the EC2 credential is created
  /// [region] The region in which to obtain the V3 Keystone client.
  /// [secret] contains an EC2 credential secret UUID
  /// [trustId] contains an EC2 credential trust ID scope
  /// [userId] The ID of the user the EC2 credential is created for.
  Ec2CredentialV3State({
    this.access,
    this.projectId,
    this.region,
    this.secret,
    this.trustId,
    this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'access': ?access,
      'projectId': ?projectId,
      'region': ?region,
      'secret': ?secret,
      'trustId': ?trustId,
      'userId': ?userId,
    };
  }

  factory Ec2CredentialV3State.fromMap(Map<String, dynamic> map) {
    return Ec2CredentialV3State(
      access: map['access'] == null ? null : (map['access'] as String).input(),
      projectId: map['projectId'] == null ? null : (map['projectId'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      secret: map['secret'] == null ? null : (map['secret'] as String).input(),
      trustId: map['trustId'] == null ? null : (map['trustId'] as String).input(),
      userId: map['userId'] == null ? null : (map['userId'] as String).input(),
    );
  }
}

