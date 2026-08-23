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
/// [options] Invoke options controlling this call.
Future<Map<String, dynamic>> locationFromId(
  LocationFromIdArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  return await deployment.invoke<Map<String, dynamic>>(
    'gcp:index/locationFromId:locationFromId',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
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
/// [options] Invoke options controlling this call.
Future<Map<String, dynamic>> nameFromId(
  NameFromIdArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  return await deployment.invoke<Map<String, dynamic>>(
    'gcp:index/nameFromId:nameFromId',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
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
/// [options] Invoke options controlling this call.
Future<Map<String, dynamic>> projectFromId(
  ProjectFromIdArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  return await deployment.invoke<Map<String, dynamic>>(
    'gcp:index/projectFromId:projectFromId',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
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
/// [options] Invoke options controlling this call.
Future<Map<String, dynamic>> regionFromId(
  RegionFromIdArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  return await deployment.invoke<Map<String, dynamic>>(
    'gcp:index/regionFromId:regionFromId',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
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
/// [options] Invoke options controlling this call.
Future<Map<String, dynamic>> regionFromZone(
  RegionFromZoneArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  return await deployment.invoke<Map<String, dynamic>>(
    'gcp:index/regionFromZone:regionFromZone',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
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
/// [options] Invoke options controlling this call.
Future<Map<String, dynamic>> zoneFromId(
  ZoneFromIdArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  return await deployment.invoke<Map<String, dynamic>>(
    'gcp:index/zoneFromId:zoneFromId',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
}
