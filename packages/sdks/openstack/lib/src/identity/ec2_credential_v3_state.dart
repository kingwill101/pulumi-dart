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
    pulumi.Output<String>? access,
    pulumi.Output<String>? projectId,
    pulumi.Output<String>? region,
    pulumi.Output<String>? secret,
    pulumi.Output<String>? trustId,
    pulumi.Output<String>? userId,
  }) :
      access = pulumi.Input.asOptionalInput<String>(access),
      projectId = pulumi.Input.asOptionalInput<String>(projectId),
      region = pulumi.Input.asOptionalInput<String>(region),
      secret = pulumi.Input.asOptionalInput<String>(secret),
      trustId = pulumi.Input.asOptionalInput<String>(trustId),
      userId = pulumi.Input.asOptionalInput<String>(userId);

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
      access: map['access'] == null ? null : pulumi.Output.create<String>(map['access'] as String),
      projectId: map['projectId'] == null ? null : pulumi.Output.create<String>(map['projectId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      secret: map['secret'] == null ? null : pulumi.Output.create<String>(map['secret'] as String),
      trustId: map['trustId'] == null ? null : pulumi.Output.create<String>(map['trustId'] as String),
      userId: map['userId'] == null ? null : pulumi.Output.create<String>(map['userId'] as String),
    );
  }
}

