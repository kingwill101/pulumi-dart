// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connectivity_criterion_response.dart';
import 'connector_data_type_response.dart';
import 'connector_definitions_availability_response.dart';
import 'connector_definitions_permissions_response.dart';
import 'graph_query_response.dart';
import 'instruction_step_response.dart';

/// The UiConfig for 'Customizable' connector definition kind.
class CustomizableConnectorUiConfigResponse {
  /// The exposure status of the connector to the customers.
  final ConnectorDefinitionsAvailabilityResponse? availability;
  /// Gets or sets the way the connector checks whether the connector is connected.
  final List<ConnectivityCriterionResponse> connectivityCriteria;
  /// Gets or sets the data types to check for last data received.
  final List<ConnectorDataTypeResponse> dataTypes;
  /// Gets or sets the connector description in markdown format.
  final String descriptionMarkdown;
  /// Gets or sets the graph queries to show the current data volume over time.
  final List<GraphQueryResponse> graphQueries;
  /// Gets or sets custom connector id. optional field.
  final String? id;
  /// Gets or sets the instruction steps to enable the connector.
  final List<InstructionStepResponse> instructionSteps;
  /// Gets or sets a value indicating whether to use 'OR'(SOME) or 'AND' between ConnectivityCriteria items.
  final bool? isConnectivityCriteriasMatchSome;
  /// Gets or sets the connector logo to be used when displaying the connector within Azure Sentinel's connector's gallery.
  /// The logo value should be in SVG format.
  final String? logo;
  /// The required Permissions for the connector.
  final ConnectorDefinitionsPermissionsResponse permissions;
  /// Gets or sets the connector publisher name.
  final String publisher;
  /// Gets or sets the connector blade title.
  final String title;

  /// Creates a new [CustomizableConnectorUiConfigResponse].
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
  CustomizableConnectorUiConfigResponse({
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
      'availability': ?availability == null ? null : availability!.toMap(),
      'connectivityCriteria': pulumi.Input.encodeList<ConnectivityCriterionResponse, Map<String, dynamic>>(connectivityCriteria, (value) => value.toMap()),
      'dataTypes': pulumi.Input.encodeList<ConnectorDataTypeResponse, Map<String, dynamic>>(dataTypes, (value) => value.toMap()),
      'descriptionMarkdown': descriptionMarkdown,
      'graphQueries': pulumi.Input.encodeList<GraphQueryResponse, Map<String, dynamic>>(graphQueries, (value) => value.toMap()),
      'id': ?id,
      'instructionSteps': pulumi.Input.encodeList<InstructionStepResponse, Map<String, dynamic>>(instructionSteps, (value) => value.toMap()),
      'isConnectivityCriteriasMatchSome': ?isConnectivityCriteriasMatchSome,
      'logo': ?logo,
      'permissions': permissions.toMap(),
      'publisher': publisher,
      'title': title,
    };
  }

  factory CustomizableConnectorUiConfigResponse.fromMap(Map<String, dynamic> map) {
    return CustomizableConnectorUiConfigResponse(
      availability: map['availability'] == null ? null : ConnectorDefinitionsAvailabilityResponse.fromMap((map['availability'] as Map).cast<String, dynamic>()),
      connectivityCriteria: pulumi.Input.decodeList<ConnectivityCriterionResponse>(map['connectivityCriteria'], (value) => ConnectivityCriterionResponse.fromMap((value as Map).cast<String, dynamic>())),
      dataTypes: pulumi.Input.decodeList<ConnectorDataTypeResponse>(map['dataTypes'], (value) => ConnectorDataTypeResponse.fromMap((value as Map).cast<String, dynamic>())),
      descriptionMarkdown: map['descriptionMarkdown'] as String,
      graphQueries: pulumi.Input.decodeList<GraphQueryResponse>(map['graphQueries'], (value) => GraphQueryResponse.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] == null ? null : map['id'] as String,
      instructionSteps: pulumi.Input.decodeList<InstructionStepResponse>(map['instructionSteps'], (value) => InstructionStepResponse.fromMap((value as Map).cast<String, dynamic>())),
      isConnectivityCriteriasMatchSome: map['isConnectivityCriteriasMatchSome'] == null ? null : map['isConnectivityCriteriasMatchSome'] as bool,
      logo: map['logo'] == null ? null : map['logo'] as String,
      permissions: ConnectorDefinitionsPermissionsResponse.fromMap((map['permissions'] as Map).cast<String, dynamic>()),
      publisher: map['publisher'] as String,
      title: map['title'] as String,
    );
  }
}

