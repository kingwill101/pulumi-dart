import 'package:pulumi/pulumi.dart' as pulumi;
import 'profile_bot_defense_args.dart';
import 'profile_bot_defense_state.dart';

class ProfileBotDefense extends pulumi.CustomResource {
  /// Specifies the profile from which this profile inherits settings. The default is the system-supplied `request-log` profile
  late final pulumi.Output<String?> defaultsFrom;
  /// User defined description for Bot Defense profile
  late final pulumi.Output<String> description;
  /// Select the enforcement mode, possible values are `transparent` and `blocking`.
  late final pulumi.Output<String> enforcementMode;
  /// Name of the Bot Defense profile
  late final pulumi.Output<String> name;
  /// Profile templates specify Mitigation and Verification Settings default values. possible ptions `balanced`,`relaxed` and `strict`
  late final pulumi.Output<String> template;

  /// Creates a new [ProfileBotDefense].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProfileBotDefense]. {@macro pulumi_ltm_profile_bot_defense_profile_bot_defense_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProfileBotDefense(
    String name, {
    ProfileBotDefenseArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'f5bigip:ltm/profileBotDefense:ProfileBotDefense',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    defaultsFrom = registerOutput<String?>('defaultsFrom');
    description = registerOutput<String>('description');
    enforcementMode = registerOutput<String>('enforcementMode');
    this.name = registerOutput<String>('name');
    template = registerOutput<String>('template');
  }

  /// Gets an existing [ProfileBotDefense] resource's state with the given [name] and [id].
  static ProfileBotDefense get(
    String name,
    pulumi.Input<String> id, {
    ProfileBotDefenseState? state,
  }) {
    return ProfileBotDefense._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ProfileBotDefense._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'f5bigip:ltm/profileBotDefense:ProfileBotDefense',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    defaultsFrom = registerOutput<String?>('defaultsFrom');
    description = registerOutput<String>('description');
    enforcementMode = registerOutput<String>('enforcementMode');
    this.name = registerOutput<String>('name');
    template = registerOutput<String>('template');
  }
}
