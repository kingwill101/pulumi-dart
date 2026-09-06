import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_contact_args.dart';
import 'get_contact_profile_args.dart';
import 'get_contact_profile_result.dart';
import 'get_contact_result.dart';
import 'get_edge_site_args.dart';
import 'get_edge_site_result.dart';
import 'get_geo_catalog_args.dart';
import 'get_geo_catalog_result.dart';
import 'get_ground_station_args.dart';
import 'get_ground_station_result.dart';
import 'get_l2_connection_args.dart';
import 'get_l2_connection_result.dart';
import 'get_spacecraft_args.dart';
import 'get_spacecraft_result.dart';
import 'list_edge_site_l2_connections_args.dart';
import 'list_edge_site_l2_connections_result.dart';
import 'list_ground_station_l2_connections_args.dart';
import 'list_ground_station_l2_connections_result.dart';
import 'list_spacecraft_available_contacts_args.dart';
import 'list_spacecraft_available_contacts_result.dart';

/// Gets the specified contact in a specified resource group.
///
/// Uses Azure REST API version 2022-11-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_orbital_get_contact_args_doc}
/// [options] Invoke options controlling this call.
Future<GetContactResult> getContact(
  GetContactArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:orbital:getContact',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetContactResult.fromMap(result);
}

pulumi.Output<GetContactResult> getContactOutput(
  GetContactArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:orbital:getContact',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetContactResult.fromMap);
}

/// Gets the specified contact Profile in a specified resource group.
///
/// Uses Azure REST API version 2022-11-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_orbital_get_contact_profile_args_doc}
/// [options] Invoke options controlling this call.
Future<GetContactProfileResult> getContactProfile(
  GetContactProfileArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:orbital:getContactProfile',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetContactProfileResult.fromMap(result);
}

pulumi.Output<GetContactProfileResult> getContactProfileOutput(
  GetContactProfileArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:orbital:getContactProfile',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetContactProfileResult.fromMap);
}

/// Gets the specified edge site in a specified resource group.
///
/// Uses Azure REST API version 2024-03-01-preview.
///
/// Other available API versions: 2024-03-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native orbital [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_orbital_get_edge_site_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEdgeSiteResult> getEdgeSite(
  GetEdgeSiteArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:orbital:getEdgeSite',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEdgeSiteResult.fromMap(result);
}

pulumi.Output<GetEdgeSiteResult> getEdgeSiteOutput(
  GetEdgeSiteArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:orbital:getEdgeSite',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEdgeSiteResult.fromMap);
}

/// Get a GeoCatalog
///
/// Uses Azure REST API version 2025-02-11-preview.
///
/// Other available API versions: 2024-01-31-preview, 2026-04-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native orbital [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_orbital_get_geo_catalog_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGeoCatalogResult> getGeoCatalog(
  GetGeoCatalogArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:orbital:getGeoCatalog',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGeoCatalogResult.fromMap(result);
}

pulumi.Output<GetGeoCatalogResult> getGeoCatalogOutput(
  GetGeoCatalogArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:orbital:getGeoCatalog',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetGeoCatalogResult.fromMap);
}

/// Gets the specified ground station in a specified resource group.
///
/// Uses Azure REST API version 2024-03-01-preview.
///
/// Other available API versions: 2024-03-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native orbital [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_orbital_get_ground_station_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGroundStationResult> getGroundStation(
  GetGroundStationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:orbital:getGroundStation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGroundStationResult.fromMap(result);
}

pulumi.Output<GetGroundStationResult> getGroundStationOutput(
  GetGroundStationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:orbital:getGroundStation',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetGroundStationResult.fromMap);
}

/// Gets the specified L2 connection in a specified resource group.
///
/// Uses Azure REST API version 2024-03-01-preview.
///
/// Other available API versions: 2024-03-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native orbital [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_orbital_get_l2_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetL2ConnectionResult> getL2Connection(
  GetL2ConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:orbital:getL2Connection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetL2ConnectionResult.fromMap(result);
}

pulumi.Output<GetL2ConnectionResult> getL2ConnectionOutput(
  GetL2ConnectionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:orbital:getL2Connection',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetL2ConnectionResult.fromMap);
}

/// Gets the specified spacecraft in a specified resource group.
///
/// Uses Azure REST API version 2022-11-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_orbital_get_spacecraft_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSpacecraftResult> getSpacecraft(
  GetSpacecraftArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:orbital:getSpacecraft',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSpacecraftResult.fromMap(result);
}

pulumi.Output<GetSpacecraftResult> getSpacecraftOutput(
  GetSpacecraftArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:orbital:getSpacecraft',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSpacecraftResult.fromMap);
}

/// Returns a list of L2 Connections attached to an edge site.
///
/// Uses Azure REST API version 2024-03-01-preview.
///
/// Other available API versions: 2024-03-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native orbital [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_orbital_list_edge_site_l2_connections_args_doc}
/// [options] Invoke options controlling this call.
Future<ListEdgeSiteL2ConnectionsResult> listEdgeSiteL2Connections(
  ListEdgeSiteL2ConnectionsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:orbital:listEdgeSiteL2Connections',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListEdgeSiteL2ConnectionsResult.fromMap(result);
}

pulumi.Output<ListEdgeSiteL2ConnectionsResult> listEdgeSiteL2ConnectionsOutput(
  ListEdgeSiteL2ConnectionsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:orbital:listEdgeSiteL2Connections',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListEdgeSiteL2ConnectionsResult.fromMap);
}

/// Returns a list of L2 Connections attached to an ground station.
///
/// Uses Azure REST API version 2024-03-01-preview.
///
/// Other available API versions: 2024-03-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native orbital [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_orbital_list_ground_station_l2_connections_args_doc}
/// [options] Invoke options controlling this call.
Future<ListGroundStationL2ConnectionsResult> listGroundStationL2Connections(
  ListGroundStationL2ConnectionsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:orbital:listGroundStationL2Connections',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListGroundStationL2ConnectionsResult.fromMap(result);
}

pulumi.Output<ListGroundStationL2ConnectionsResult> listGroundStationL2ConnectionsOutput(
  ListGroundStationL2ConnectionsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:orbital:listGroundStationL2Connections',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListGroundStationL2ConnectionsResult.fromMap);
}

/// Returns list of available contacts. A contact is available if the spacecraft is visible from the ground station for more than the minimum viable contact duration provided in the contact profile.
///
/// Uses Azure REST API version 2022-11-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_orbital_list_spacecraft_available_contacts_args_doc}
/// [options] Invoke options controlling this call.
Future<ListSpacecraftAvailableContactsResult> listSpacecraftAvailableContacts(
  ListSpacecraftAvailableContactsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:orbital:listSpacecraftAvailableContacts',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListSpacecraftAvailableContactsResult.fromMap(result);
}

pulumi.Output<ListSpacecraftAvailableContactsResult> listSpacecraftAvailableContactsOutput(
  ListSpacecraftAvailableContactsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:orbital:listSpacecraftAvailableContacts',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListSpacecraftAvailableContactsResult.fromMap);
}
