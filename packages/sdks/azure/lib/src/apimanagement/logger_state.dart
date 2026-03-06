// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'logger_application_insights.dart';
import 'logger_eventhub.dart';

/// Input properties used for looking up and filtering Logger resources.
class LoggerState {
  /// The name of the API Management Service. Changing this forces a new resource to be created.
  final pulumi.Input<String>? apiManagementName;
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
  final pulumi.Input<String>? resourceGroupName;
  /// The target resource id which will be linked in the API-Management portal page. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceId;

  /// Creates a new [LoggerState].
  /// [apiManagementName] The name of the API Management Service. Changing this forces a new resource to be created.
  /// [applicationInsights] An `application_insights` block as documented below. Changing this forces a new resource to be created.
  /// [buffered] Specifies whether records should be buffered in the Logger prior to publishing. Defaults to `true`.
  /// [description] A description of this Logger.
  /// [eventhub] An `eventhub` block as documented below. Changing this forces a new resource to be created.
  /// [name] The name of this Logger, which must be unique within the API Management Service. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the Resource Group in which the API Management Service exists. Changing this forces a new resource to be created.
  /// [resourceId] The target resource id which will be linked in the API-Management portal page. Changing this forces a new resource to be created.
  const LoggerState({
    this.apiManagementName,
    this.applicationInsights,
    this.buffered,
    this.description,
    this.eventhub,
    this.name,
    this.resourceGroupName,
    this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiManagementName': ?apiManagementName,
      'applicationInsights': ?pulumi.Input.mapOptionalInputValue<LoggerApplicationInsights, Map<String, dynamic>>(applicationInsights, (value) => value.toMap()),
      'buffered': ?buffered,
      'description': ?description,
      'eventhub': ?pulumi.Input.mapOptionalInputValue<LoggerEventhub, Map<String, dynamic>>(eventhub, (value) => value.toMap()),
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'resourceId': ?resourceId,
    };
  }

  factory LoggerState.fromMap(Map<String, dynamic> map) {
    return LoggerState(
      apiManagementName: (() { final guardedValue = map['apiManagementName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      applicationInsights: (() { final guardedValue = map['applicationInsights']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LoggerApplicationInsights.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      buffered: (() { final guardedValue = map['buffered']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      eventhub: (() { final guardedValue = map['eventhub']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LoggerEventhub.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceId: (() { final guardedValue = map['resourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

