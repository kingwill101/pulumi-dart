import 'package:pulumi/pulumi.dart' as pulumi;
import 'collector_args.dart';
import 'guest_os_scan_response.dart';
import 'vsphere_scan_response.dart';

/// Create a Collector to manage the on-prem appliance which collects information about Customer assets.
class Collector extends pulumi.CustomResource {
  /// Store cloud storage bucket name (which is a guid) created with this Collector.
  late final pulumi.Output<String> bucket;

  /// Client version.
  late final pulumi.Output<String> clientVersion;

  /// How many days to collect data.
  late final pulumi.Output<int> collectionDays;

  /// Required. Id of the requesting object.
  late final pulumi.Output<String> collectorId;

  /// Create time stamp.
  late final pulumi.Output<String> createTime;

  /// User specified description of the Collector.
  late final pulumi.Output<String> description;

  /// User specified name of the Collector.
  late final pulumi.Output<String> displayName;

  /// Uri for EULA (End User License Agreement) from customer.
  late final pulumi.Output<String> eulaUri;

  /// User specified expected asset count.
  late final pulumi.Output<String> expectedAssetCount;

  /// Reference to MC Source Guest Os Scan.
  late final pulumi.Output<GuestOsScanResponse> guestOsScan;

  /// Labels as key value pairs.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;

  /// name of resource.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// Optional. An optional request ID to identify requests.
  late final pulumi.Output<String?> requestId;

  /// Service Account email used to ingest data to this Collector.
  late final pulumi.Output<String> serviceAccount;

  /// State of the Collector.
  late final pulumi.Output<String> state;

  /// Update time stamp.
  late final pulumi.Output<String> updateTime;

  /// Reference to MC Source vsphere_scan.
  late final pulumi.Output<VSphereScanResponse> vsphereScan;

  /// Creates a new [Collector].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Collector]. {@macro pulumi_rapidmigrationassessment_v1_collector_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Collector(
    String name, {
    CollectorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:rapidmigrationassessment/v1:Collector',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    bucket = registerOutput<String>('bucket');
    clientVersion = registerOutput<String>('clientVersion');
    collectionDays = registerOutput<int>('collectionDays');
    collectorId = registerOutput<String>('collectorId');
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String>('description');
    displayName = registerOutput<String>('displayName');
    eulaUri = registerOutput<String>('eulaUri');
    expectedAssetCount = registerOutput<String>('expectedAssetCount');
    guestOsScan = registerOutput<GuestOsScanResponse>('guestOsScan');
    labels = registerOutput<Map<String, String>>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    requestId = registerOutput<String?>('requestId');
    serviceAccount = registerOutput<String>('serviceAccount');
    state = registerOutput<String>('state');
    updateTime = registerOutput<String>('updateTime');
    vsphereScan = registerOutput<VSphereScanResponse>('vsphereScan');
  }
}
