// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ServiceEmailDomainAssociation resources.
class ServiceEmailDomainAssociationState {
  /// The ID of the Communication Service. Changing this forces a new communication service email domain association to be created.
  final pulumi.Input<String>? communicationServiceId;
  /// The ID of the EMail Service Domain. Changing this forces a new communication service email domain association to be created.
  final pulumi.Input<String>? emailServiceDomainId;

  /// Creates a new [ServiceEmailDomainAssociationState].
  /// [communicationServiceId] The ID of the Communication Service. Changing this forces a new communication service email domain association to be created.
  /// [emailServiceDomainId] The ID of the EMail Service Domain. Changing this forces a new communication service email domain association to be created.
  ServiceEmailDomainAssociationState({
    this.communicationServiceId,
    this.emailServiceDomainId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'communicationServiceId': ?communicationServiceId,
      'emailServiceDomainId': ?emailServiceDomainId,
    };
  }

  factory ServiceEmailDomainAssociationState.fromMap(Map<String, dynamic> map) {
    return ServiceEmailDomainAssociationState(
      communicationServiceId: map['communicationServiceId'] == null ? null : (map['communicationServiceId'] as String).input(),
      emailServiceDomainId: map['emailServiceDomainId'] == null ? null : (map['emailServiceDomainId'] as String).input(),
    );
  }
}

