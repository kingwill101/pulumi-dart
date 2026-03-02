// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'logger_application_insights.dart';
import 'logger_eventhub.dart';

/// {@template pulumi_apimanagement_logger_logger_args_doc}
/// The set of arguments for Logger.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_logger_logger_args_doc}
class LoggerArgs {
  /// The name of the API Management Service. Changing this forces a new resource to be created.
  final pulumi.Input<String> apiManagementName;
  /// An `application_insights` block as documented below. Changing this forces a new resource to be created.
  final pulumi.Input<LoggerApplicationInsights>? applicationInsights;
  /// Specifies whether records should be buffered in the Logger prior to publishing. Defaults to `true`.
  final pulumi.Input<bool>? buffered;
  /// A description of this Logger.
  final pulumi.Input<String>? description;
  /// An `eventhub` block as documented below. Changing this forces a new resource to be created.
  final pulumi.Input<LoggerEventhub>? eventhub;
  /// The name of this Logger, which must be unique within the API Management Service. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group in which the API Management Service exists. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The target resource id which will be linked in the API-Management portal page. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceId;

  /// Creates a new [LoggerArgs].
  /// [apiManagementName] The name of the API Management Service. Changing this forces a new resource to be created.
  /// [applicationInsights] An `application_insights` block as documented below. Changing this forces a new resource to be created.
  /// [buffered] Specifies whether records should be buffered in the Logger prior to publishing. Defaults to `true`.
  /// [description] A description of this Logger.
  /// [eventhub] An `eventhub` block as documented below. Changing this forces a new resource to be created.
  /// [name] The name of this Logger, which must be unique within the API Management Service. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the Resource Group in which the API Management Service exists. Changing this forces a new resource to be created.
  /// [resourceId] The target resource id which will be linked in the API-Management portal page. Changing this forces a new resource to be created.
  LoggerArgs({
    required this.apiManagementName,
    this.applicationInsights,
    this.buffered,
    this.description,
    this.eventhub,
    this.name,
    required this.resourceGroupName,
    this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiManagementName': apiManagementName,
      'applicationInsights': ?pulumi.Input.mapOptionalInputValue<LoggerApplicationInsights, Map<String, dynamic>>(applicationInsights, (value) => value.toMap()),
      'buffered': ?buffered,
      'description': ?description,
      'eventhub': ?pulumi.Input.mapOptionalInputValue<LoggerEventhub, Map<String, dynamic>>(eventhub, (value) => value.toMap()),
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'resourceId': ?resourceId,
    };
  }

  factory LoggerArgs.fromMap(Map<String, dynamic> map) {
    return LoggerArgs(
      apiManagementName: (map['apiManagementName'] as String).input(),
      applicationInsights: map['applicationInsights'] == null ? null : (LoggerApplicationInsights.fromMap((map['applicationInsights']! as Map).cast<String, dynamic>())).input(),
      buffered: map['buffered'] == null ? null : (map['buffered']! as bool).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      eventhub: map['eventhub'] == null ? null : (LoggerEventhub.fromMap((map['eventhub']! as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      resourceId: map['resourceId'] == null ? null : (map['resourceId']! as String).input(),
    );
  }
}

