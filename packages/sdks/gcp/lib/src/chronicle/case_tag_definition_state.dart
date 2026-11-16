// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering CaseTagDefinition resources.
class CaseTagDefinitionState {
  /// When checked, the tag will be assigned as the title of the case if it meets the conditions.
  final pulumi.Input<bool?>? canBeCaseTitle;
  /// The unique identifier of the CaseTagDefinition.
  final pulumi.Input<String?>? caseTagDefinitionId;
  /// The type of comparison to be used when comparing the value to the case.
  /// Possible values are: `EXACT`, `START_WITH`, `CONTAIN`, `ENDS_WITH`.
  final pulumi.Input<String?>? comparisonType;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// This is the name of the tag that will be applied to the case.
  final pulumi.Input<String?>? displayName;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String?>? instance;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String?>? location;
  /// The criteria to match the case against.
  /// Possible values are: `BY_VENDOR`, `BY_PRODUCT`, `BY_RULE_GENERATOR`, `BY_ENTITY_PROPERTY_NAME`, `DATA_DRIVEN`, `SYSTEM`.
  final pulumi.Input<String?>? matchCriteria;
  /// Identifier. The unique name(ID) of the CaseTagDefinition.
  /// Format:
  /// projects/{project}/locations/{location}/instances/{instance}/caseTagDefinitions/{case_tag_definition_id}
  final pulumi.Input<String?>? name;
  /// Note that Google Security Operations merges priority with other alerts and
  /// entities and events so that the priority here is not absolute.
  final pulumi.Input<int?>? priority;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// Specific Entity property name to search in case.
  /// This is relevant only when a SearchIn of type BY_ENTITY_PROPERTY_NAME was chosen.
  final pulumi.Input<String?>? propertyName;
  /// Specific value to search in case - in addition to SearchIn property.
  final pulumi.Input<String?>? value;

  /// Creates a new [CaseTagDefinitionState].
  /// [canBeCaseTitle] When checked, the tag will be assigned as the title of the case if it meets the conditions.
  /// [caseTagDefinitionId] The unique identifier of the CaseTagDefinition.
  /// [comparisonType] The type of comparison to be used when comparing the value to the case.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] This is the name of the tag that will be applied to the case.
  /// [instance] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [matchCriteria] The criteria to match the case against.
  /// [name] Identifier. The unique name(ID) of the CaseTagDefinition.
  /// [priority] Note that Google Security Operations merges priority with other alerts and
  /// [project] The ID of the project in which the resource belongs.
  /// [propertyName] Specific Entity property name to search in case.
  /// [value] Specific value to search in case - in addition to SearchIn property.
  const CaseTagDefinitionState({
    this.canBeCaseTitle,
    this.caseTagDefinitionId,
    this.comparisonType,
    this.deletionPolicy,
    this.displayName,
    this.instance,
    this.location,
    this.matchCriteria,
    this.name,
    this.priority,
    this.project,
    this.propertyName,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'canBeCaseTitle': ?canBeCaseTitle,
      'caseTagDefinitionId': ?caseTagDefinitionId,
      'comparisonType': ?comparisonType,
      'deletionPolicy': ?deletionPolicy,
      'displayName': ?displayName,
      'instance': ?instance,
      'location': ?location,
      'matchCriteria': ?matchCriteria,
      'name': ?name,
      'priority': ?priority,
      'project': ?project,
      'propertyName': ?propertyName,
      'value': ?value,
    };
  }

  factory CaseTagDefinitionState.fromMap(Map<String, dynamic> map) {
    return CaseTagDefinitionState(
      canBeCaseTitle: (() { final guardedValue = map['canBeCaseTitle']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      caseTagDefinitionId: (() { final guardedValue = map['caseTagDefinitionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      comparisonType: (() { final guardedValue = map['comparisonType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instance: (() { final guardedValue = map['instance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      matchCriteria: (() { final guardedValue = map['matchCriteria']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      propertyName: (() { final guardedValue = map['propertyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
