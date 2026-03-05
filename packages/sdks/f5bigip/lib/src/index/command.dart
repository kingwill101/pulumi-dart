import 'package:pulumi/pulumi.dart' as pulumi;
import 'command_args.dart';
import 'command_state.dart';

/// `f5bigip.Command` Run TMSH commands on F5 devices
///
/// This resource is helpful to send TMSH command to an BIG-IP node and returns the results read from the device
class Command extends pulumi.CustomResource {
  /// The resulting output from the `commands` executed.
  late final pulumi.Output<List<String>> commandResults;
  /// The commands to send to the remote BIG-IP device over the configured provider. The resulting output from the command is returned and added to `command_result`
  late final pulumi.Output<List<String>> commands;
  late final pulumi.Output<String?> when;

  /// Creates a new [Command].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Command]. {@macro pulumi_index_command_command_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Command(
    String name, {
    CommandArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'f5bigip:index/command:Command',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    commandResults = registerOutput<List<String>>('commandResults');
    commands = registerOutput<List<String>>('commands');
    when = registerOutput<String?>('when');
  }

  /// Gets an existing [Command] resource's state with the given [name] and [id].
  static Command get(
    String name,
    pulumi.Input<String> id, {
    CommandState? state,
  }) {
    return Command._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Command._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'f5bigip:index/command:Command',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    commandResults = registerOutput<List<String>>('commandResults');
    commands = registerOutput<List<String>>('commands');
    when = registerOutput<String?>('when');
  }
}
