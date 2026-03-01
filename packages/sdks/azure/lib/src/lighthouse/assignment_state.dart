// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Assignment resources.
class AssignmentState {
  /// A Fully qualified path of the lighthouse definition, such as `/subscriptions/0afefe50-734e-4610-8c82-a144aff49dea/providers/Microsoft.ManagedServices/registrationDefinitions/26c128c2-fefa-4340-9bb1-8e081c90ada2`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? lighthouseDefinitionId;
  /// A unique UUID/GUID which identifies this lighthouse assignment- one will be generated if not specified. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The scope at which the Lighthouse Assignment applies too, such as `/subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333` or `/subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333/resourceGroups/myGroup`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? scope;

  /// Creates a new [AssignmentState].
  /// [lighthouseDefinitionId] A Fully qualified path of the lighthouse definition, such as `/subscriptions/0afefe50-734e-4610-8c82-a144aff49dea/providers/Microsoft.ManagedServices/registrationDefinitions/26c128c2-fefa-4340-9bb1-8e081c90ada2`. Changing this forces a new resource to be created.
  /// [name] A unique UUID/GUID which identifies this lighthouse assignment- one will be generated if not specified. Changing this forces a new resource to be created.
  /// [scope] The scope at which the Lighthouse Assignment applies too, such as `/subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333` or `/subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333/resourceGroups/myGroup`. Changing this forces a new resource to be created.
  AssignmentState({
    pulumi.Output<String>? lighthouseDefinitionId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? scope,
  }) :
      lighthouseDefinitionId = pulumi.Input.asOptionalInput<String>(lighthouseDefinitionId),
      name = pulumi.Input.asOptionalInput<String>(name),
      scope = pulumi.Input.asOptionalInput<String>(scope);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lighthouseDefinitionId': ?lighthouseDefinitionId,
      'name': ?name,
      'scope': ?scope,
    };
  }

  factory AssignmentState.fromMap(Map<String, dynamic> map) {
    return AssignmentState(
      lighthouseDefinitionId: map['lighthouseDefinitionId'] == null ? null : pulumi.Output.create<String>(map['lighthouseDefinitionId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      scope: map['scope'] == null ? null : pulumi.Output.create<String>(map['scope'] as String),
    );
  }
}

