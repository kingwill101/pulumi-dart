import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_group_args.dart';
import 'data_group_state.dart';

/// `f5bigip.ltm.DataGroup` Manages internal (in-line) datagroup configuration
///
/// Resource should be named with their`full path`. The full path is the combination of the `partition + name` of the resource, for example `/Common/my-datagroup`.
class DataGroup extends pulumi.CustomResource {
  /// Set `false` if you want to Create External Datagroups. default is `true`,means creates internal datagroup.
  late final pulumi.Output<bool?> internal;
  /// Name of the datagroup
  late final pulumi.Output<String> name;
  /// a set of `name` and `data` attributes, name must be of type specified by the `type` attributed (`string`, `ip` and `integer`), data is optional and can take any value, multiple `record` sets can be specified as needed.
  late final pulumi.Output<List<Map<String, dynamic>>?> records;
  /// Path to a file with records in it,The file should be well-formed,it includes records, one per line,that resemble the following format "key separator value". For example, `foo := bar`.
  /// This should be used in conjunction with `internal` attribute set `false`
  late final pulumi.Output<String?> recordsSrc;
  /// datagroup type (applies to the `name` field of the record), supports: `string`, `ip` or `integer`
  late final pulumi.Output<String> type;

  /// Creates a new [DataGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DataGroup]. {@macro pulumi_ltm_data_group_data_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DataGroup(
    String name, {
    DataGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'f5bigip:ltm/dataGroup:DataGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    internal = registerOutput<bool?>('internal');
    this.name = registerOutput<String>('name');
    records = registerOutput<List<Map<String, dynamic>>?>('records');
    recordsSrc = registerOutput<String?>('recordsSrc');
    type = registerOutput<String>('type');
  }

  /// Gets an existing [DataGroup] resource's state with the given [name] and [id].
  static DataGroup get(
    String name,
    pulumi.Input<String> id, {
    DataGroupState? state,
  }) {
    return DataGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DataGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'f5bigip:ltm/dataGroup:DataGroup',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    internal = registerOutput<bool?>('internal');
    this.name = registerOutput<String>('name');
    records = registerOutput<List<Map<String, dynamic>>?>('records');
    recordsSrc = registerOutput<String?>('recordsSrc');
    type = registerOutput<String>('type');
  }
}
