// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'query_template_routine.dart';

/// {@template pulumi_bigqueryanalyticshub_query_template_query_template_args_doc}
/// The set of arguments for QueryTemplate.
/// {@endtemplate}
/// {@macro pulumi_bigqueryanalyticshub_query_template_query_template_args_doc}
class QueryTemplateArgs {
  /// The ID of the data exchange. Must contain only Unicode letters, numbers (0-9), underscores (_). Should not use characters that require URL-escaping, or characters outside of ASCII, spaces.
  final pulumi.Input<String> dataExchangeId;
  /// Sets the policy for deleting the QueryTemplate. Defaults to `DELETE_IF_DRAFTED`.
  /// * `ABANDON`: Untracks the resource from Terraform state but leaves it intact in BigQuery.
  /// * `DELETE`: Deletes the QueryTemplate from BigQuery.
  /// * `DELETE_IF_DRAFTED`: Deletes the QueryTemplate only if it is in a `DRAFTED` state; otherwise, it abandons it.
  /// * `PREVENT`: Prevents deletion of the QueryTemplate.
  final pulumi.Input<String?>? deletionPolicy;
  /// Short description of the QueryTemplate. The description must not contain
  /// Unicode non-characters and C0 and C1 control codes except tabs,
  /// new lines, carriage returns, and page breaks.
  /// Default value is an empty string. Max length: 2000 bytes.
  final pulumi.Input<String?>? description;
  /// Human-readable display name of the QueryTemplate. The display name must
  /// contain only Unicode letters, numbers (0-9), underscores (_), dashes (-),
  /// spaces ( ), ampersands (&) and can't start or end with spaces. Default
  /// value is an empty string.
  final pulumi.Input<String> displayName;
  /// Documentation describing the QueryTemplate.
  final pulumi.Input<String?>? documentation;
  /// The name of the location this data exchange query template.
  final pulumi.Input<String> location;
  /// Email or URL of the primary point of contact of the QueryTemplate.
  final pulumi.Input<String?>? primaryContact;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// Unique QueryTemplate ID.
  final pulumi.Input<String> queryTemplateId;
  /// The routine associated with the QueryTemplate.
  /// Structure is documented below.
  final pulumi.Input<QueryTemplateRoutine?>? routine;
  /// If set to `true`, the QueryTemplate will be submitted for approval and cannot be updated afterwards. This is a one-time action.
  final pulumi.Input<bool?>? submit;

  /// Creates a new [QueryTemplateArgs].
  /// [dataExchangeId] The ID of the data exchange. Must contain only Unicode letters, numbers (0-9), underscores (_). Should not use characters that require URL-escaping, or characters outside of ASCII, spaces.
  /// [deletionPolicy] Sets the policy for deleting the QueryTemplate. Defaults to `DELETE_IF_DRAFTED`.
  /// [description] Short description of the QueryTemplate. The description must not contain
  /// [displayName] Human-readable display name of the QueryTemplate. The display name must
  /// [documentation] Documentation describing the QueryTemplate.
  /// [location] The name of the location this data exchange query template.
  /// [primaryContact] Email or URL of the primary point of contact of the QueryTemplate.
  /// [project] The ID of the project in which the resource belongs.
  /// [queryTemplateId] Unique QueryTemplate ID.
  /// [routine] The routine associated with the QueryTemplate.
  /// [submit] If set to `true`, the QueryTemplate will be submitted for approval and cannot be updated afterwards. This is a one-time action.
  const QueryTemplateArgs({
    required this.dataExchangeId,
    this.deletionPolicy,
    this.description,
    required this.displayName,
    this.documentation,
    required this.location,
    this.primaryContact,
    this.project,
    required this.queryTemplateId,
    this.routine,
    this.submit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataExchangeId': dataExchangeId,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'displayName': displayName,
      'documentation': ?documentation,
      'location': location,
      'primaryContact': ?primaryContact,
      'project': ?project,
      'queryTemplateId': queryTemplateId,
      'routine': ?pulumi.Input.mapOptionalInputValue<QueryTemplateRoutine, Map<String, dynamic>>(routine, (value) => value.toMap()),
      'submit': ?submit,
    };
  }

  factory QueryTemplateArgs.fromMap(Map<String, dynamic> map) {
    return QueryTemplateArgs(
      dataExchangeId: pulumi.Input.fromValue(map['dataExchangeId'] as String),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      documentation: (() { final guardedValue = map['documentation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      primaryContact: (() { final guardedValue = map['primaryContact']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      queryTemplateId: pulumi.Input.fromValue(map['queryTemplateId'] as String),
      routine: (() { final guardedValue = map['routine']; if (guardedValue == null) return null; return pulumi.Input.fromValue(QueryTemplateRoutine.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      submit: (() { final guardedValue = map['submit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
