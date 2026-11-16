// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_chronicle_case_tag_definition_case_tag_definition_args_doc}
/// The set of arguments for CaseTagDefinition.
/// {@endtemplate}
/// {@macro pulumi_chronicle_case_tag_definition_case_tag_definition_args_doc}
class CaseTagDefinitionArgs {
  /// When checked, the tag will be assigned as the title of the case if it meets the conditions.
  final pulumi.Input<bool> canBeCaseTitle;
  /// The type of comparison to be used when comparing the value to the case.
  /// Possible values are: `EXACT`, `START_WITH`, `CONTAIN`, `ENDS_WITH`.
  final pulumi.Input<String> comparisonType;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// This is the name of the tag that will be applied to the case.
  final pulumi.Input<String> displayName;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> instance;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;
  /// The criteria to match the case against.
  /// Possible values are: `BY_VENDOR`, `BY_PRODUCT`, `BY_RULE_GENERATOR`, `BY_ENTITY_PROPERTY_NAME`, `DATA_DRIVEN`, `SYSTEM`.
  final pulumi.Input<String> matchCriteria;
  /// Note that Google Security Operations merges priority with other alerts and
  /// entities and events so that the priority here is not absolute.
  final pulumi.Input<int> priority;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// Specific Entity property name to search in case.
  /// This is relevant only when a SearchIn of type BY_ENTITY_PROPERTY_NAME was chosen.
  final pulumi.Input<String?>? propertyName;
  /// Specific value to search in case - in addition to SearchIn property.
  final pulumi.Input<String> value;

  /// Creates a new [CaseTagDefinitionArgs].
  /// [canBeCaseTitle] When checked, the tag will be assigned as the title of the case if it meets the conditions.
  /// [comparisonType] The type of comparison to be used when comparing the value to the case.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] This is the name of the tag that will be applied to the case.
  /// [instance] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [matchCriteria] The criteria to match the case against.
  /// [priority] Note that Google Security Operations merges priority with other alerts and
  /// [project] The ID of the project in which the resource belongs.
  /// [propertyName] Specific Entity property name to search in case.
  /// [value] Specific value to search in case - in addition to SearchIn property.
  const CaseTagDefinitionArgs({
    required this.canBeCaseTitle,
    required this.comparisonType,
    this.deletionPolicy,
    required this.displayName,
    required this.instance,
    required this.location,
    required this.matchCriteria,
    required this.priority,
    this.project,
    this.propertyName,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'canBeCaseTitle': canBeCaseTitle,
      'comparisonType': comparisonType,
      'deletionPolicy': ?deletionPolicy,
      'displayName': displayName,
      'instance': instance,
      'location': location,
      'matchCriteria': matchCriteria,
      'priority': priority,
      'project': ?project,
      'propertyName': ?propertyName,
      'value': value,
    };
  }

  factory CaseTagDefinitionArgs.fromMap(Map<String, dynamic> map) {
    return CaseTagDefinitionArgs(
      canBeCaseTitle: pulumi.Input.fromValue(map['canBeCaseTitle'] as bool),
      comparisonType: pulumi.Input.fromValue(map['comparisonType'] as String),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      instance: pulumi.Input.fromValue(map['instance'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      matchCriteria: pulumi.Input.fromValue(map['matchCriteria'] as String),
      priority: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['priority'])),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      propertyName: (() { final guardedValue = map['propertyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
