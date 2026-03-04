// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_lighthouse_assignment_assignment_args_doc}
/// The set of arguments for Assignment.
/// {@endtemplate}
/// {@macro pulumi_lighthouse_assignment_assignment_args_doc}
class AssignmentArgs {
  /// A Fully qualified path of the lighthouse definition, such as `/subscriptions/0afefe50-734e-4610-8c82-a144aff49dea/providers/Microsoft.ManagedServices/registrationDefinitions/26c128c2-fefa-4340-9bb1-8e081c90ada2`. Changing this forces a new resource to be created.
  final pulumi.Input<String> lighthouseDefinitionId;

  /// A unique UUID/GUID which identifies this lighthouse assignment- one will be generated if not specified. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;

  /// The scope at which the Lighthouse Assignment applies too, such as `/subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333` or `/subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333/resourceGroups/myGroup`. Changing this forces a new resource to be created.
  final pulumi.Input<String> scope;

  /// Creates a new [AssignmentArgs].
  /// [lighthouseDefinitionId] A Fully qualified path of the lighthouse definition, such as `/subscriptions/0afefe50-734e-4610-8c82-a144aff49dea/providers/Microsoft.ManagedServices/registrationDefinitions/26c128c2-fefa-4340-9bb1-8e081c90ada2`. Changing this forces a new resource to be created.
  /// [name] A unique UUID/GUID which identifies this lighthouse assignment- one will be generated if not specified. Changing this forces a new resource to be created.
  /// [scope] The scope at which the Lighthouse Assignment applies too, such as `/subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333` or `/subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333/resourceGroups/myGroup`. Changing this forces a new resource to be created.
  AssignmentArgs({
    required this.lighthouseDefinitionId,
    this.name,
    required this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lighthouseDefinitionId': lighthouseDefinitionId,
      'name': ?name,
      'scope': scope,
    };
  }

  factory AssignmentArgs.fromMap(Map<String, dynamic> map) {
    return AssignmentArgs(
      lighthouseDefinitionId: pulumi.Input.fromValue(
        map['lighthouseDefinitionId'] as String,
      ),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      scope: pulumi.Input.fromValue(map['scope'] as String),
    );
  }
}
