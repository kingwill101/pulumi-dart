import 'package:pulumi/pulumi.dart' as pulumi;
import 'hook_args.dart';
import 'hook_push_option.dart';
import 'hook_state.dart';

/// Hook is a user-defined HTTP callback triggered by an event.
///
///
/// To get more information about Hook, see:
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/secure-source-manager/docs/overview)
///
///
///
/// ## Example Usage
///
/// ## Import
///
/// Hook can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/repositories/{{repository_id}}/hooks/{{hook_id}}`
///
/// * `{{project}}/{{location}}/{{repository_id}}/{{hook_id}}`
///
/// * `{{location}}/{{repository_id}}/{{hook_id}}`
///
/// * `{{hook_id}}`
///
/// When using the `pulumi import` command, Hook can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:securesourcemanager/hook:Hook default projects/{{project}}/locations/{{location}}/repositories/{{repository_id}}/hooks/{{hook_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:securesourcemanager/hook:Hook default {{project}}/{{location}}/{{repository_id}}/{{hook_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:securesourcemanager/hook:Hook default {{location}}/{{repository_id}}/{{hook_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:securesourcemanager/hook:Hook default {{hook_id}}
/// ```
class Hook extends pulumi.CustomResource {
  /// Create timestamp.
  late final pulumi.Output<String> createTime;

  /// Determines if the hook disabled or not.
  /// Set to true to stop sending traffic.
  late final pulumi.Output<bool?> disabled;

  /// The events that trigger hook on.
  /// Each value may be one of: `PUSH`, `PULL_REQUEST`.
  late final pulumi.Output<List<String>> events;

  /// The ID for the Hook.
  late final pulumi.Output<String> hookId;

  /// The location for the Repository.
  late final pulumi.Output<String> location;

  /// A unique identifier for a Hook. The name should be of the format:
  /// `projects/{project}/locations/{location_id}/repositories/{repository_id}/hooks/{hook_id}`
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The trigger option for push events.
  /// Structure is documented below.
  late final pulumi.Output<HookPushOption> pushOption;

  /// The ID for the Repository.
  late final pulumi.Output<String> repositoryId;

  /// The sensitive query string to be appended to the target URI.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  late final pulumi.Output<String?> sensitiveQueryString;

  /// The target URI to which the payloads will be delivered.
  late final pulumi.Output<String> targetUri;

  /// Unique identifier of the hook.
  late final pulumi.Output<String> uid;

  /// Update timestamp.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Hook].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Hook]. {@macro pulumi_securesourcemanager_hook_hook_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Hook(String name, {HookArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'gcp:securesourcemanager/hook:Hook',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    createTime = registerOutput<String>('createTime');
    disabled = registerOutput<bool?>('disabled');
    events = registerOutput<List<String>>('events');
    hookId = registerOutput<String>('hookId');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pushOption = registerOutput<HookPushOption>('pushOption');
    repositoryId = registerOutput<String>('repositoryId');
    sensitiveQueryString = registerOutput<String?>('sensitiveQueryString');
    targetUri = registerOutput<String>('targetUri');
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [Hook] resource's state with the given [name] and [id].
  static Hook get(String name, pulumi.Input<String> id, {HookState? state}) {
    return Hook._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Hook._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:securesourcemanager/hook:Hook',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    createTime = registerOutput<String>('createTime');
    disabled = registerOutput<bool?>('disabled');
    events = registerOutput<List<String>>('events');
    hookId = registerOutput<String>('hookId');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pushOption = registerOutput<HookPushOption>('pushOption');
    repositoryId = registerOutput<String>('repositoryId');
    sensitiveQueryString = registerOutput<String?>('sensitiveQueryString');
    targetUri = registerOutput<String>('targetUri');
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
  }
}
