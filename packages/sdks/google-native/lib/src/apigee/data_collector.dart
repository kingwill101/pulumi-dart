import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_collector_args.dart';

/// Creates a new data collector.
class DataCollector extends pulumi.CustomResource {
  /// The time at which the data collector was created in milliseconds since the epoch.
  late final pulumi.Output<String> createdAt;
  /// ID of the data collector. Overrides any ID in the data collector resource. Must be a string beginning with `dc_` that contains only letters, numbers, and underscores.
  late final pulumi.Output<String?> dataCollectorId;
  /// A description of the data collector.
  late final pulumi.Output<String> description;
  /// The time at which the Data Collector was last updated in milliseconds since the epoch.
  late final pulumi.Output<String> lastModifiedAt;
  /// ID of the data collector. Must begin with `dc_`.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> organizationId;
  /// Immutable. The type of data this data collector will collect.
  late final pulumi.Output<String> type;

  /// Creates a new [DataCollector].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DataCollector]. {@macro pulumi_apigee_v1_data_collector_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DataCollector(
    String name, {
    DataCollectorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:apigee/v1:DataCollector',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createdAt = registerOutput<String>('createdAt');
    dataCollectorId = registerOutput<String?>('dataCollectorId');
    description = registerOutput<String>('description');
    lastModifiedAt = registerOutput<String>('lastModifiedAt');
    this.name = registerOutput<String>('name');
    organizationId = registerOutput<String>('organizationId');
    type = registerOutput<String>('type');
  }
}
