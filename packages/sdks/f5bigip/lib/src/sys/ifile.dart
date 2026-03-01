import 'package:pulumi/pulumi.dart' as pulumi;
import 'ifile_args.dart';
import 'ifile_state.dart';

/// ## Import
///
/// System iFiles can be imported using their full path:
///
/// bash
///
/// ```sh
/// $ pulumi import f5bigip:sys/ifile:Ifile example /Common/my-ifile
/// ```
///
/// For iFiles with sub-paths:
///
/// bash
///
/// ```sh
/// $ pulumi import f5bigip:sys/ifile:Ifile example /Common/templates/my-ifile
/// ```
class Ifile extends pulumi.CustomResource {
  /// MD5 checksum of the iFile content, automatically calculated by BIG-IP.
  late final pulumi.Output<String> checksum;
  /// The content of the iFile. This can be inline text, file content loaded with `file()`, or dynamically generated content. This field is marked as sensitive.
  late final pulumi.Output<String> content;
  /// Name of the system iFile to be created on BIG-IP. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// Partition where the iFile will be stored. Defaults to `Common`.
  late final pulumi.Output<String?> partition;
  /// Size of the iFile content in bytes.
  late final pulumi.Output<int> size;
  /// Subdirectory within the partition for organizing iFiles hierarchically.
  late final pulumi.Output<String?> subPath;

  /// Creates a new [Ifile].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Ifile]. {@macro pulumi_sys_ifile_ifile_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Ifile(
    String name, {
    IfileArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'f5bigip:sys/ifile:Ifile',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.checksum = registerOutput<String>('checksum');
    this.content = registerOutput<String>('content');
    this.name = registerOutput<String>('name');
    this.partition = registerOutput<String?>('partition');
    this.size = registerOutput<int>('size');
    this.subPath = registerOutput<String?>('subPath');
  }

  /// Gets an existing [Ifile] resource's state with the given [name] and [id].
  static Ifile get(
    String name,
    pulumi.Input<String> id, {
    IfileState? state,
  }) {
    return Ifile._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Ifile._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'f5bigip:sys/ifile:Ifile',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.checksum = registerOutput<String>('checksum');
    this.content = registerOutput<String>('content');
    this.name = registerOutput<String>('name');
    this.partition = registerOutput<String?>('partition');
    this.size = registerOutput<int>('size');
    this.subPath = registerOutput<String?>('subPath');
  }
}
