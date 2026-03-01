import 'package:pulumi/pulumi.dart' as pulumi;
import 'as3_args.dart';
import 'as3_delete_apps.dart';
import 'as3_state.dart';

/// ## Import
///
/// As3 resources can be imported using the partition name, e.g., ( use comma separated partition names if there are multiple partitions in as3 deployments )
///
/// ```sh
/// $ pulumi import f5bigip:index/as3:As3  bigip_as3.test Sample_http_01
/// ```
///
/// ```sh
/// $ pulumi import f5bigip:index/as3:As3  bigip_as3.test Sample_http_01,Sample_non_http_01
/// ```
///
/// #### Import examples ( single and multiple partitions )
///
/// ```sh
/// $ pulumi import f5bigip:index/as3:As3 test Sample_http_01
/// ```
///
/// bigip_as3.test: Importing from ID "Sample_http_01"...
///
/// bigip_as3.test: Import prepared!
///
/// Prepared bigip_as3 for import
///
/// bigip_as3.test: Refreshing state... [id=Sample_http_01]
///
/// Import successful!
///
/// The resources that were imported are shown above. These resources are now in
///
/// your Terraform state and will henceforth be managed by Terraform.
///
/// $ terraform show
///
/// bigip_as3.test:
///
/// resource "bigip_as3" "test" {
///
/// as3_json      = jsonencode(
///
/// {
///
/// action      = "deploy"
///
/// class       = "AS3"
///
/// declaration = {
///
/// Sample_http_01 = {
///
/// A1    = {
///
/// class      = "Application"
///
/// jsessionid = {
///
/// class             = "Persist"
///
/// cookieMethod      = "hash"
///
/// cookieName        = "JSESSIONID"
///
/// persistenceMethod = "cookie"
///
/// }
///
/// service    = {
///
/// class              = "Service_HTTP"
///
/// persistenceMethods = [
///
/// {
///
/// use = "jsessionid"
///
/// },
///
/// ]
///
/// pool               = "web_pool"
///
/// virtualAddresses   = [
///
/// "10.0.2.10",
///
/// ]
///
/// }
///
/// web_pool   = {
///
/// class    = "Pool"
///
/// members  = [
///
/// {
///
/// serverAddresses = [
///
/// "192.0.2.10",
///
/// "192.0.2.11",
///
/// ]
///
/// servicePort     = 80
///
/// },
///
/// ]
///
/// monitors = [
///
/// "http",
///
/// ]
///
/// }
///
/// }
///
/// class = "Tenant"
///
/// }
///
/// class          = "ADC"
///
/// id             = "UDP_DNS_Sample"
///
/// label          = "UDP_DNS_Sample"
///
/// remark         = "Sample of a UDP DNS Load Balancer Service"
///
/// schemaVersion  = "3.0.0"
///
/// }
///
/// persist     = true
///
/// }
///
/// )
///
/// id            = "Sample_http_01"
///
/// tenant_filter = "Sample_http_01"
///
/// tenant_list   = "Sample_http_01"
///
/// }
///
/// ```sh
/// $ pulumi import f5bigip:index/as3:As3 test Sample_http_01,Sample_non_http_01
/// ```
///
/// bigip_as3.test: Importing from ID "Sample_http_01,Sample_non_http_01"...
///
/// bigip_as3.test: Import prepared!
///
/// Prepared bigip_as3 for import
///
/// bigip_as3.test: Refreshing state... [id=Sample_http_01,Sample_non_http_01]
///
/// Import successful!
///
/// The resources that were imported are shown above. These resources are now in
///
/// your Terraform state and will henceforth be managed by Terraform.
///
/// $ terraform show
///
/// bigip_as3.test:
///
/// resource "bigip_as3" "test" {
///
/// as3_json      = jsonencode(
///
/// {
///
/// action      = "deploy"
///
/// class       = "AS3"
///
/// declaration = {
///
/// Sample_http_01     = {
///
/// A1    = {
///
/// class      = "Application"
///
/// jsessionid = {
///
/// class             = "Persist"
///
/// cookieMethod      = "hash"
///
/// cookieName        = "JSESSIONID"
///
/// persistenceMethod = "cookie"
///
/// }
///
/// service    = {
///
/// class              = "Service_HTTP"
///
/// persistenceMethods = [
///
/// {
///
/// use = "jsessionid"
///
/// },
///
/// ]
///
/// pool               = "web_pool"
///
/// virtualAddresses   = [
///
/// "10.0.2.10",
///
/// ]
///
/// }
///
/// web_pool   = {
///
/// class    = "Pool"
///
/// members  = [
///
/// {
///
/// serverAddresses = [
///
/// "192.0.2.10",
///
/// "192.0.2.11",
///
/// ]
///
/// servicePort     = 80
///
/// },
///
/// ]
///
/// monitors = [
///
/// "http",
///
/// ]
///
/// }
///
/// }
///
/// class = "Tenant"
///
/// }
///
/// Sample_non_http_01 = {
///
/// DNS_Service = {
///
/// Pool1   = {
///
/// class    = "Pool"
///
/// members  = [
///
/// {
///
/// serverAddresses = [
///
/// "10.1.10.100",
///
/// ]
///
/// servicePort     = 53
///
/// },
///
/// {
///
/// serverAddresses = [
///
/// "10.1.10.101",
///
/// ]
///
/// servicePort     = 53
///
/// },
///
/// ]
///
/// monitors = [
///
/// "icmp",
///
/// ]
///
/// }
///
/// class   = "Application"
///
/// service = {
///
/// class            = "Service_UDP"
///
/// pool             = "Pool1"
///
/// virtualAddresses = [
///
/// "10.1.20.121",
///
/// ]
///
/// virtualPort      = 53
///
/// }
///
/// }
///
/// class       = "Tenant"
///
/// }
///
/// class              = "ADC"
///
/// id                 = "UDP_DNS_Sample"
///
/// label              = "UDP_DNS_Sample"
///
/// remark             = "Sample of a UDP DNS Load Balancer Service"
///
/// schemaVersion      = "3.0.0"
///
/// }
///
/// persist     = true
///
/// }
///
/// )
///
/// id            = "Sample_http_01,Sample_non_http_01"
///
/// tenant_filter = "Sample_http_01,Sample_non_http_01"
///
/// tenant_list   = "Sample_http_01,Sample_non_http_01"
///
/// }
///
/// * `AS3 documentation` - https://clouddocs.f5.com/products/extensions/f5-appsvcs-extension/latest/userguide/composing-a-declaration.html
class As3 extends pulumi.CustomResource {
  /// List of applications currently deployed on the Big-Ip
  late final pulumi.Output<String> applicationList;
  /// Path/Filename of Declarative AS3 JSON which is a json file used with builtin ```file``` function
  late final pulumi.Output<String?> as3Json;
  /// A map that allows you to configure specific behavior controls for the AS3 declaration. Each key represents a particular control setting, and the corresponding value defines its configuration.
  late final pulumi.Output<Map<String, String>?> controls;
  /// Block for specifying tenant name and applications to delete from BIG-IP. **Mutually exclusive with `as3_json`**: only one of `delete_apps` or `as3_json` can be set in a resource block.
  late final pulumi.Output<As3DeleteApps?> deleteApps;
  /// Set True if you want to ignore metadata changes during update. By default it is set to false
  ///
  /// * `as3_example1.json` - Example  AS3 Declarative JSON file with single tenant
  ///
  /// ```json
  ///
  /// {
  /// "class": "AS3",
  /// "action": "deploy",
  /// "persist": true,
  /// "declaration": {
  /// "class": "ADC",
  /// "schemaVersion": "3.0.0",
  /// "id": "example-declaration-01",
  /// "label": "Sample 1",
  /// "remark": "Simple HTTP application with round robin pool",
  /// "Sample_01": {
  /// "class": "Tenant",
  /// "defaultRouteDomain": 0,
  /// "Application_1": {
  /// "class": "Application",
  /// "template": "http",
  /// "serviceMain": {
  /// "class": "Service_HTTP",
  /// "virtualAddresses": [
  /// "10.0.2.10"
  /// ],
  /// "pool": "web_pool"
  /// },
  /// "web_pool": {
  /// "class": "Pool",
  /// "monitors": [
  /// "http"
  /// ],
  /// "members": [
  /// {
  /// "servicePort": 80,
  /// "serverAddresses": [
  /// "192.0.1.100",
  /// "192.0.1.110"
  /// ]
  /// }
  /// ]
  /// }
  /// }
  /// }
  /// }
  /// }
  ///
  /// ```
  /// * `as3_example2.json` - Example  AS3 Declarative JSON file with multiple tenants
  ///
  /// ```json
  ///
  /// {
  /// "class": "AS3",
  /// "action": "deploy",
  /// "persist": true,
  /// "declaration": {
  /// "class": "ADC",
  /// "schemaVersion": "3.0.0",
  /// "id": "example-declaration-01",
  /// "label": "Sample 1",
  /// "remark": "Simple HTTP application with round robin pool",
  /// "Sample_02": {
  /// "class": "Tenant",
  /// "defaultRouteDomain": 0,
  /// "Application_2": {
  /// "class": "Application",
  /// "template": "http",
  /// "serviceMain": {
  /// "class": "Service_HTTP",
  /// "virtualAddresses": [
  /// "10.2.2.10"
  /// ],
  /// "pool": "web_pool2"
  /// },
  /// "web_pool2": {
  /// "class": "Pool",
  /// "monitors": [
  /// "http"
  /// ],
  /// "members": [
  /// {
  /// "servicePort": 80,
  /// "serverAddresses": [
  /// "192.2.1.100",
  /// "192.2.1.110"
  /// ]
  /// }
  /// ]
  /// }
  /// }
  /// },
  /// "Sample_03": {
  /// "class": "Tenant",
  /// "defaultRouteDomain": 0,
  /// "Application_3": {
  /// "class": "Application",
  /// "template": "http",
  /// "serviceMain": {
  /// "class": "Service_HTTP",
  /// "virtualAddresses": [
  /// "10.1.2.10"
  /// ],
  /// "pool": "web_pool3"
  /// },
  /// "web_pool3": {
  /// "class": "Pool",
  /// "monitors": [
  /// "http"
  /// ],
  /// "members": [
  /// {
  /// "servicePort": 80,
  /// "serverAddresses": [
  /// "192.3.1.100",
  /// "192.3.1.110"
  /// ]
  /// }
  /// ]
  /// }
  /// }
  /// }
  /// }
  /// }
  ///
  /// ```
  ///
  /// * `perApplication_example` - Per Application Example - JSON file with multiple Applications (and no Tenant Details)
  ///
  /// ```json
  /// {
  /// "Application1": {
  /// "class": "Application",
  /// "service": {
  /// "class": "Service_HTTP",
  /// "virtualAddresses": [
  /// "192.0.2.1"
  /// ],
  /// "pool": "pool"
  /// },
  /// "pool": {
  /// "class": "Pool",
  /// "members": [
  /// {
  /// "servicePort": 80,
  /// "serverAddresses": [
  /// "192.0.2.10",
  /// "192.0.2.20"
  /// ]
  /// }
  /// ]
  /// }
  /// },
  /// "Application2": {
  /// "class": "Application",
  /// "service": {
  /// "class": "Service_HTTP",
  /// "virtualAddresses": [
  /// "192.0.3.2"
  /// ],
  /// "pool": "pool"
  /// },
  /// "pool": {
  /// "class": "Pool",
  /// "members": [
  /// {
  /// "servicePort": 80,
  /// "serverAddresses": [
  /// "192.0.3.30",
  /// "192.0.3.40"
  /// ]
  /// }
  /// ]
  /// }
  /// }
  /// }
  /// ```
  ///
  /// # f5bigip.As3 delete one or more applications
  ///
  /// The `f5bigip.As3` resource allows you to **post full AS3 declarations** or **selectively delete one or more applications** from a specific tenant in BIG-IP.
  ///
  /// > **Note**: `delete_apps` and `as3_json` are **mutually exclusive**. You must use only one of them in a single `f5bigip.As3` resource block.
  late final pulumi.Output<bool?> ignoreMetadata;
  /// Will specify whether is deployment is done via Per-Application Way or Traditional Way
  late final pulumi.Output<bool> perAppMode;
  /// ID of AS3 post declaration async task
  late final pulumi.Output<String> taskId;
  /// If there are multiple tenants on a BIG-IP, this attribute helps the user to set a particular tenant to which he want to reflect the changes. Other tenants will neither be created nor be modified.
  late final pulumi.Output<String> tenantFilter;
  /// List of tenants currently deployed on the Big-Ip
  late final pulumi.Output<String> tenantList;
  /// Name of Tenant. This name is used only in the case of Per-Application Deployment. If it is not provided, then a random name would be generated.
  late final pulumi.Output<String> tenantName;

  /// Creates a new [As3].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [As3]. {@macro pulumi_index_as3_as3_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  As3(
    String name, {
    As3Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'f5bigip:index/as3:As3',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.applicationList = registerOutput<String>('applicationList');
    this.as3Json = registerOutput<String?>('as3Json');
    this.controls = registerOutput<Map<String, String>?>('controls');
    this.deleteApps = registerOutput<As3DeleteApps?>('deleteApps');
    this.ignoreMetadata = registerOutput<bool?>('ignoreMetadata');
    this.perAppMode = registerOutput<bool>('perAppMode');
    this.taskId = registerOutput<String>('taskId');
    this.tenantFilter = registerOutput<String>('tenantFilter');
    this.tenantList = registerOutput<String>('tenantList');
    this.tenantName = registerOutput<String>('tenantName');
  }

  /// Gets an existing [As3] resource's state with the given [name] and [id].
  static As3 get(
    String name,
    pulumi.Input<String> id, {
    As3State? state,
  }) {
    return As3._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  As3._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'f5bigip:index/as3:As3',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.applicationList = registerOutput<String>('applicationList');
    this.as3Json = registerOutput<String?>('as3Json');
    this.controls = registerOutput<Map<String, String>?>('controls');
    this.deleteApps = registerOutput<As3DeleteApps?>('deleteApps');
    this.ignoreMetadata = registerOutput<bool?>('ignoreMetadata');
    this.perAppMode = registerOutput<bool>('perAppMode');
    this.taskId = registerOutput<String>('taskId');
    this.tenantFilter = registerOutput<String>('tenantFilter');
    this.tenantList = registerOutput<String>('tenantList');
    this.tenantName = registerOutput<String>('tenantName');
  }
}
