// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connectivity_criterion.dart';
import 'connector_data_type.dart';
import 'connector_definitions_availability.dart';
import 'connector_definitions_permissions.dart';
import 'graph_query.dart';
import 'instruction_step.dart';

/// The UiConfig for 'Customizable' connector definition kind.
class CustomizableConnectorUiConfig {
  /// The exposure status of the connector to the customers.
  final pulumi.Input<ConnectorDefinitionsAvailability>? availability;
  /// Gets or sets the way the connector checks whether the connector is connected.
  final pulumi.Input<List<ConnectivityCriterion>> connectivityCriteria;
  /// Gets or sets the data types to check for last data received.
  final pulumi.Input<List<ConnectorDataType>> dataTypes;
  /// Gets or sets the connector description in markdown format.
  final pulumi.Input<String> descriptionMarkdown;
  /// Gets or sets the graph queries to show the current data volume over time.
  final pulumi.Input<List<GraphQuery>> graphQueries;
  /// Gets or sets custom connector id. optional field.
  final pulumi.Input<String>? id;
  /// Gets or sets the instruction steps to enable the connector.
  final pulumi.Input<List<InstructionStep>> instructionSteps;
  /// Gets or sets a value indicating whether to use 'OR'(SOME) or 'AND' between ConnectivityCriteria items.
  final pulumi.Input<bool>? isConnectivityCriteriasMatchSome;
  /// Gets or sets the connector logo to be used when displaying the connector within Azure Sentinel's connector's gallery.
  /// The logo value should be in SVG format.
  final pulumi.Input<String>? logo;
  /// The required Permissions for the connector.
  final pulumi.Input<ConnectorDefinitionsPermissions> permissions;
  /// Gets or sets the connector publisher name.
  final pulumi.Input<String> publisher;
  /// Gets or sets the connector blade title.
  final pulumi.Input<String> title;

  /// Creates a new [CustomizableConnectorUiConfig].
  /// [availability] The exposure status of the connector to the customers.
  /// [connectivityCriteria] Gets or sets the way the connector checks whether the connector is connected.
  /// [dataTypes] Gets or sets the data types to check for last data received.
  /// [descriptionMarkdown] Gets or sets the connector description in markdown format.
  /// [graphQueries] Gets or sets the graph queries to show the current data volume over time.
  /// [id] Gets or sets custom connector id. optional field.
  /// [instructionSteps] Gets or sets the instruction steps to enable the connector.
  /// [isConnectivityCriteriasMatchSome] Gets or sets a value indicating whether to use 'OR'(SOME) or 'AND' between ConnectivityCriteria items.
  /// [logo] Gets or sets the connector logo to be used when displaying the connector within Azure Sentinel's connector's gallery.
  /// [permissions] The required Permissions for the connector.
  /// [publisher] Gets or sets the connector publisher name.
  /// [title] Gets or sets the connector blade title.
  CustomizableConnectorUiConfig({
    this.availability,
    required this.connectivityCriteria,
    required this.dataTypes,
    required this.descriptionMarkdown,
    required this.graphQueries,
    this.id,
    required this.instructionSteps,
    this.isConnectivityCriteriasMatchSome,
    this.logo,
    required this.permissions,
    required this.publisher,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availability': ?pulumi.Input.mapOptionalInputValue<ConnectorDefinitionsAvailability, Map<String, dynamic>>(availability, (value) => value.toMap()),
      'connectivityCriteria': pulumi.Input.mapInputValue<List<ConnectivityCriterion>, List<Map<String, dynamic>>>(connectivityCriteria, (value) => pulumi.Input.encodeList<ConnectivityCriterion, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dataTypes': pulumi.Input.mapInputValue<List<ConnectorDataType>, List<Map<String, dynamic>>>(dataTypes, (value) => pulumi.Input.encodeList<ConnectorDataType, Map<String, dynamic>>(value, (value) => value.toMap())),
      'descriptionMarkdown': descriptionMarkdown,
      'graphQueries': pulumi.Input.mapInputValue<List<GraphQuery>, List<Map<String, dynamic>>>(graphQueries, (value) => pulumi.Input.encodeList<GraphQuery, Map<String, dynamic>>(value, (value) => value.toMap())),
      'id': ?id,
      'instructionSteps': pulumi.Input.mapInputValue<List<InstructionStep>, List<Map<String, dynamic>>>(instructionSteps, (value) => pulumi.Input.encodeList<InstructionStep, Map<String, dynamic>>(value, (value) => value.toMap())),
      'isConnectivityCriteriasMatchSome': ?isConnectivityCriteriasMatchSome,
      'logo': ?logo,
      'permissions': pulumi.Input.mapInputValue<ConnectorDefinitionsPermissions, Map<String, dynamic>>(permissions, (value) => value.toMap()),
      'publisher': publisher,
      'title': title,
    };
  }

  factory CustomizableConnectorUiConfig.fromMap(Map<String, dynamic> map) {
    return CustomizableConnectorUiConfig(
      availability: (() { final guardedValue = map['availability']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectorDefinitionsAvailability.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      connectivityCriteria: pulumi.Input.fromValue(pulumi.Input.decodeList<ConnectivityCriterion>(map['connectivityCriteria']!, (value) => ConnectivityCriterion.fromMap((value as Map).cast<String, dynamic>()))),
      dataTypes: pulumi.Input.fromValue(pulumi.Input.decodeList<ConnectorDataType>(map['dataTypes']!, (value) => ConnectorDataType.fromMap((value as Map).cast<String, dynamic>()))),
      descriptionMarkdown: pulumi.Input.fromValue(map['descriptionMarkdown'] as String),
      graphQueries: pulumi.Input.fromValue(pulumi.Input.decodeList<GraphQuery>(map['graphQueries']!, (value) => GraphQuery.fromMap((value as Map).cast<String, dynamic>()))),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instructionSteps: pulumi.Input.fromValue(pulumi.Input.decodeList<InstructionStep>(map['instructionSteps']!, (value) => InstructionStep.fromMap((value as Map).cast<String, dynamic>()))),
      isConnectivityCriteriasMatchSome: (() { final guardedValue = map['isConnectivityCriteriasMatchSome']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      logo: (() { final guardedValue = map['logo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      permissions: pulumi.Input.fromValue(ConnectorDefinitionsPermissions.fromMap((map['permissions']! as Map).cast<String, dynamic>())),
      publisher: pulumi.Input.fromValue(map['publisher'] as String),
      title: pulumi.Input.fromValue(map['title'] as String),
    );
  }
}

