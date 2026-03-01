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
    required pulumi.Output<String> apiManagementName,
    pulumi.Output<LoggerApplicationInsights>? applicationInsights,
    pulumi.Output<bool>? buffered,
    pulumi.Output<String>? description,
    pulumi.Output<LoggerEventhub>? eventhub,
    pulumi.Output<String>? name,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? resourceId,
  }) :
      apiManagementName = pulumi.Input.asInput<String>(apiManagementName),
      applicationInsights = pulumi.Input.asOptionalInput<LoggerApplicationInsights>(applicationInsights),
      buffered = pulumi.Input.asOptionalInput<bool>(buffered),
      description = pulumi.Input.asOptionalInput<String>(description),
      eventhub = pulumi.Input.asOptionalInput<LoggerEventhub>(eventhub),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceId = pulumi.Input.asOptionalInput<String>(resourceId);

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
      apiManagementName: pulumi.Output.create<String>(map['apiManagementName'] as String),
      applicationInsights: map['applicationInsights'] == null ? null : pulumi.Output.create<LoggerApplicationInsights>(LoggerApplicationInsights.fromMap((map['applicationInsights'] as Map).cast<String, dynamic>())),
      buffered: map['buffered'] == null ? null : pulumi.Output.create<bool>(map['buffered'] as bool),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      eventhub: map['eventhub'] == null ? null : pulumi.Output.create<LoggerEventhub>(LoggerEventhub.fromMap((map['eventhub'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      resourceId: map['resourceId'] == null ? null : pulumi.Output.create<String>(map['resourceId'] as String),
    );
  }
}

