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
  const EmailServiceDomainSenderUsernameState({
    this.displayName,
    this.emailServiceDomainId,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'emailServiceDomainId': ?emailServiceDomainId,
      'name': ?name,
    };
  }

  factory EmailServiceDomainSenderUsernameState.fromMap(Map<String, dynamic> map) {
    return EmailServiceDomainSenderUsernameState(
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      emailServiceDomainId: (() { final guardedValue = map['emailServiceDomainId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

