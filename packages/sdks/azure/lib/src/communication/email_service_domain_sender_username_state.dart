// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EmailServiceDomainSenderUsername resources.
class EmailServiceDomainSenderUsernameState {
  /// The display name for the Email Communication Service Domain Sender Username resource.
  final pulumi.Input<String>? displayName;
  /// The ID of the Email Communication Service Domain resource. Changing this forces a new resource to be created.
  final pulumi.Input<String>? emailServiceDomainId;
  /// The name of the Email Communication Service Domain Sender Username resource. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;

  /// Creates a new [EmailServiceDomainSenderUsernameState].
  /// [displayName] The display name for the Email Communication Service Domain Sender Username resource.
  /// [emailServiceDomainId] The ID of the Email Communication Service Domain resource. Changing this forces a new resource to be created.
  /// [name] The name of the Email Communication Service Domain Sender Username resource. Changing this forces a new resource to be created.
  EmailServiceDomainSenderUsernameState({
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? emailServiceDomainId,
    pulumi.Output<String>? name,
  }) :
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      emailServiceDomainId = pulumi.Input.asOptionalInput<String>(emailServiceDomainId),
      name = pulumi.Input.asOptionalInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'emailServiceDomainId': ?emailServiceDomainId,
      'name': ?name,
    };
  }

  factory EmailServiceDomainSenderUsernameState.fromMap(Map<String, dynamic> map) {
    return EmailServiceDomainSenderUsernameState(
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      emailServiceDomainId: map['emailServiceDomainId'] == null ? null : pulumi.Output.create<String>(map['emailServiceDomainId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
    );
  }
}

