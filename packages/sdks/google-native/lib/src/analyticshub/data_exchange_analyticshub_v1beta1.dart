import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_exchange_analyticshub_v1beta1_args.dart';

/// Creates a new data exchange.
/// Auto-naming is currently not supported for this resource.
class DataExchangeAnalyticshubV1beta1 extends pulumi.CustomResource {
  /// Required. The ID of the data exchange. Must contain only Unicode letters, numbers (0-9), underscores (_). Should not use characters that require URL-escaping, or characters outside of ASCII, spaces. Max length: 100 bytes.
  late final pulumi.Output<String> dataExchangeId;

  /// Optional. Description of the data exchange. The description must not contain Unicode non-characters as well as C0 and C1 control codes except tabs (HT), new lines (LF), carriage returns (CR), and page breaks (FF). Default value is an empty string. Max length: 2000 bytes.
  late final pulumi.Output<String> description;

  /// Human-readable display name of the data exchange. The display name must contain only Unicode letters, numbers (0-9), underscores (_), dashes (-), spaces ( ), ampersands (&) and must not start or end with spaces. Default value is an empty string. Max length: 63 bytes.
  late final pulumi.Output<String> displayName;

  /// Optional. Documentation describing the data exchange.
  late final pulumi.Output<String> documentation;

  /// Optional. Base64 encoded image representing the data exchange. Max Size: 3.0MiB Expected image dimensions are 512x512 pixels, however the API only performs validation on size of the encoded data. Note: For byte fields, the content of the fields are base64-encoded (which increases the size of the data by 33-36%) when using JSON on the wire.
  late final pulumi.Output<String> icon;

  /// Number of listings contained in the data exchange.
  late final pulumi.Output<int> listingCount;
  late final pulumi.Output<String> location;

  /// The resource name of the data exchange. e.g. `projects/myproject/locations/US/dataExchanges/123`.
  late final pulumi.Output<String> name;

  /// Optional. Email or URL of the primary point of contact of the data exchange. Max Length: 1000 bytes.
  late final pulumi.Output<String> primaryContact;
  late final pulumi.Output<String> project;

  /// Creates a new [DataExchangeAnalyticshubV1beta1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DataExchangeAnalyticshubV1beta1]. {@macro pulumi_analyticshub_v1beta1_data_exchange_analyticshub_v1beta1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DataExchangeAnalyticshubV1beta1(
    String name, {
    DataExchangeAnalyticshubV1beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:analyticshub/v1beta1:DataExchange',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    dataExchangeId = registerOutput<String>('dataExchangeId');
    description = registerOutput<String>('description');
    displayName = registerOutput<String>('displayName');
    documentation = registerOutput<String>('documentation');
    icon = registerOutput<String>('icon');
    listingCount = registerOutput<int>('listingCount');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    primaryContact = registerOutput<String>('primaryContact');
    project = registerOutput<String>('project');
  }
}
