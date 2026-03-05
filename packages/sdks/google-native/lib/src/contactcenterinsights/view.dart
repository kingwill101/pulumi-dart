import 'package:pulumi/pulumi.dart' as pulumi;
import 'view_args.dart';

/// Creates a view.
class View extends pulumi.CustomResource {
  /// The time at which this view was created.
  late final pulumi.Output<String> createTime;
  /// The human-readable display name of the view.
  late final pulumi.Output<String> displayName;
  late final pulumi.Output<String> location;
  /// Immutable. The resource name of the view. Format: projects/{project}/locations/{location}/views/{view}
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;
  /// The most recent time at which the view was updated.
  late final pulumi.Output<String> updateTime;
  /// String with specific view properties, must be non-empty.
  late final pulumi.Output<String> value;

  /// Creates a new [View].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [View]. {@macro pulumi_contactcenterinsights_v1_view_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  View(
    String name, {
    ViewArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:contactcenterinsights/v1:View',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    displayName = registerOutput<String>('displayName');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    updateTime = registerOutput<String>('updateTime');
    value = registerOutput<String>('value');
  }
}
