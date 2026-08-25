// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'saved_query_logging_query.dart';
import 'saved_query_ops_analytics_query.dart';

/// {@template pulumi_logging_saved_query_saved_query_args_doc}
/// The set of arguments for SavedQuery.
/// {@endtemplate}
/// {@macro pulumi_logging_saved_query_saved_query_args_doc}
class SavedQueryArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// A description of the saved query.
  final pulumi.Input<String?>? description;
  /// The user-visible display name of the saved query.
  final pulumi.Input<String> displayName;
  /// The location of the resource see
  /// [supported regions](https://docs.cloud.google.com/logging/docs/region-support#bucket-regions).
  final pulumi.Input<String> location;
  /// The contents of the saved query.
  /// Structure is documented below.
  final pulumi.Input<SavedQueryLoggingQuery?>? loggingQuery;
  /// The name of the saved query. For example: `my-saved-query`
  final pulumi.Input<String?>? name;
  /// The contents of the saved query.
  /// Structure is documented below.
  final pulumi.Input<SavedQueryOpsAnalyticsQuery?>? opsAnalyticsQuery;
  /// The parent of the resource.
  final pulumi.Input<String> parent;
  /// The visibility of the saved query.
  /// Possible values are: `SHARED`, `PRIVATE`.
  final pulumi.Input<String> visibility;

  /// Creates a new [SavedQueryArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] A description of the saved query.
  /// [displayName] The user-visible display name of the saved query.
  /// [location] The location of the resource see
  /// [loggingQuery] The contents of the saved query.
  /// [name] The name of the saved query. For example: `my-saved-query`
  /// [opsAnalyticsQuery] The contents of the saved query.
  /// [parent] The parent of the resource.
  /// [visibility] The visibility of the saved query.
  const SavedQueryArgs({
    this.deletionPolicy,
    this.description,
    required this.displayName,
    required this.location,
    this.loggingQuery,
    this.name,
    this.opsAnalyticsQuery,
    required this.parent,
    required this.visibility,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'displayName': displayName,
      'location': location,
      'loggingQuery': ?pulumi.Input.mapOptionalInputValue<SavedQueryLoggingQuery, Map<String, dynamic>>(loggingQuery, (value) => value.toMap()),
      'name': ?name,
      'opsAnalyticsQuery': ?pulumi.Input.mapOptionalInputValue<SavedQueryOpsAnalyticsQuery, Map<String, dynamic>>(opsAnalyticsQuery, (value) => value.toMap()),
      'parent': parent,
      'visibility': visibility,
    };
  }

  factory SavedQueryArgs.fromMap(Map<String, dynamic> map) {
    return SavedQueryArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      loggingQuery: (() { final guardedValue = map['loggingQuery']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SavedQueryLoggingQuery.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      opsAnalyticsQuery: (() { final guardedValue = map['opsAnalyticsQuery']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SavedQueryOpsAnalyticsQuery.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      parent: pulumi.Input.fromValue(map['parent'] as String),
      visibility: pulumi.Input.fromValue(map['visibility'] as String),
    );
  }
}
