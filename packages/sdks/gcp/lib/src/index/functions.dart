import 'package:pulumi/pulumi.dart' as pulumi;
import 'location_from_id_args.dart';
import 'name_from_id_args.dart';
import 'project_from_id_args.dart';
import 'region_from_id_args.dart';
import 'region_from_zone_args.dart';
import 'zone_from_id_args.dart';

/// Returns the location within a provided resource's id, resource URI, self link, or full resource name.
///
/// For more information about using provider-defined functions with Terraform see the official documentation.
///
/// ## Example Usage
///
/// ## Signature
///
/// ```text
/// location_from_id(id string) string
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_location_from_id_location_from_id_args_doc}
/// [id] Value for the `id` invoke input.
/// [options] Invoke options controlling this call.
Future<String> locationFromId(
  pulumi.Input<String> id,
  {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final value = await deployment.invokeSingle<dynamic>(
    'gcp:index/locationFromId:locationFromId',
    LocationFromIdArgs(id: id, ).toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return value as String;
}

pulumi.Output<String> locationFromIdOutput(
  pulumi.Input<String> id,
  {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeSingleOutput<dynamic>(
    'gcp:index/locationFromId:locationFromId',
    pulumi.Input.mapToInputs(LocationFromIdArgs(id: id, ).toMap()),
    options: options,
  ).apply<String>((value) => value as String);
}

/// Returns the short-form name within a provided resource's id, resource URI, self link, or full resource name.
///
/// For more information about using provider-defined functions with Terraform see the official documentation.
///
/// ## Example Usage
///
/// ## Signature
///
/// ```text
/// name_from_id(id string) string
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_name_from_id_name_from_id_args_doc}
/// [id] Value for the `id` invoke input.
/// [options] Invoke options controlling this call.
Future<String> nameFromId(
  pulumi.Input<String> id,
  {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final value = await deployment.invokeSingle<dynamic>(
    'gcp:index/nameFromId:nameFromId',
    NameFromIdArgs(id: id, ).toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return value as String;
}

pulumi.Output<String> nameFromIdOutput(
  pulumi.Input<String> id,
  {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeSingleOutput<dynamic>(
    'gcp:index/nameFromId:nameFromId',
    pulumi.Input.mapToInputs(NameFromIdArgs(id: id, ).toMap()),
    options: options,
  ).apply<String>((value) => value as String);
}

/// Returns the project within a provided resource's id, resource URI, self link, or full resource name.
///
/// For more information about using provider-defined functions with Terraform see the official documentation.
///
/// ## Example Usage
///
/// ## Signature
///
/// ```text
/// project_from_id(id string) string
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_project_from_id_project_from_id_args_doc}
/// [id] Value for the `id` invoke input.
/// [options] Invoke options controlling this call.
Future<String> projectFromId(
  pulumi.Input<String> id,
  {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final value = await deployment.invokeSingle<dynamic>(
    'gcp:index/projectFromId:projectFromId',
    ProjectFromIdArgs(id: id, ).toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return value as String;
}

pulumi.Output<String> projectFromIdOutput(
  pulumi.Input<String> id,
  {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeSingleOutput<dynamic>(
    'gcp:index/projectFromId:projectFromId',
    pulumi.Input.mapToInputs(ProjectFromIdArgs(id: id, ).toMap()),
    options: options,
  ).apply<String>((value) => value as String);
}

/// Returns the region within a provided resource's id, resource URI, self link, or full resource name.
///
/// For more information about using provider-defined functions with Terraform see the official documentation.
///
/// ## Example Usage
///
/// ## Signature
///
/// ```text
/// region_from_id(id string) string
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_region_from_id_region_from_id_args_doc}
/// [id] Value for the `id` invoke input.
/// [options] Invoke options controlling this call.
Future<String> regionFromId(
  pulumi.Input<String> id,
  {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final value = await deployment.invokeSingle<dynamic>(
    'gcp:index/regionFromId:regionFromId',
    RegionFromIdArgs(id: id, ).toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return value as String;
}

pulumi.Output<String> regionFromIdOutput(
  pulumi.Input<String> id,
  {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeSingleOutput<dynamic>(
    'gcp:index/regionFromId:regionFromId',
    pulumi.Input.mapToInputs(RegionFromIdArgs(id: id, ).toMap()),
    options: options,
  ).apply<String>((value) => value as String);
}

/// Returns a region name derived from a provided zone.
///
/// For more information about using provider-defined functions with Terraform see the official documentation.
///
/// ## Example Usage
///
/// ## Signature
///
/// ```text
/// region_from_zone(zone string) string
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_region_from_zone_region_from_zone_args_doc}
/// [zone] Value for the `zone` invoke input.
/// [options] Invoke options controlling this call.
Future<String> regionFromZone(
  pulumi.Input<String> zone,
  {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final value = await deployment.invokeSingle<dynamic>(
    'gcp:index/regionFromZone:regionFromZone',
    RegionFromZoneArgs(zone: zone, ).toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return value as String;
}

pulumi.Output<String> regionFromZoneOutput(
  pulumi.Input<String> zone,
  {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeSingleOutput<dynamic>(
    'gcp:index/regionFromZone:regionFromZone',
    pulumi.Input.mapToInputs(RegionFromZoneArgs(zone: zone, ).toMap()),
    options: options,
  ).apply<String>((value) => value as String);
}

/// Returns the zone within a provided resource's id, resource URI, self link, or full resource name.
///
/// For more information about using provider-defined functions with Terraform see the official documentation.
///
/// ## Example Usage
///
/// ## Signature
///
/// ```text
/// zone_from_id(id string) string
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_zone_from_id_zone_from_id_args_doc}
/// [id] Value for the `id` invoke input.
/// [options] Invoke options controlling this call.
Future<String> zoneFromId(
  pulumi.Input<String> id,
  {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final value = await deployment.invokeSingle<dynamic>(
    'gcp:index/zoneFromId:zoneFromId',
    ZoneFromIdArgs(id: id, ).toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return value as String;
}

pulumi.Output<String> zoneFromIdOutput(
  pulumi.Input<String> id,
  {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeSingleOutput<dynamic>(
    'gcp:index/zoneFromId:zoneFromId',
    pulumi.Input.mapToInputs(ZoneFromIdArgs(id: id, ).toMap()),
    options: options,
  ).apply<String>((value) => value as String);
}
