import 'package:pulumi/pulumi.dart' as pulumi;
import 'folder_args.dart';
import 'folder_state.dart';

/// Allows management of a Google Cloud Platform folder. For more information see
/// [the official documentation](https://docs.cloud.google.com/resource-manager/docs/creating-managing-folders)
/// and
/// [API](https://docs.cloud.google.com/resource-manager/reference/rest/v2/folders).
///
/// A folder can contain projects, other folders, or a combination of both. You can use folders to group projects under an organization in a hierarchy. For example, your organization might contain multiple departments, each with its own set of Cloud Platform resources. Folders allows you to group these resources on a per-department basis. Folders are used to group resources that share common IAM policies.
///
/// Folders created live inside an Organization. See the [Organization documentation](https://docs.cloud.google.com/resource-manager/docs/quickstarts) for more details.
///
/// The service account used to run the provider when creating a `gcp.organizations.Folder`
/// resource must have `roles/resourcemanager.folderCreator`. See the
/// [Access Control for Folders Using IAM](https://docs.cloud.google.com/resource-manager/docs/access-control-folders)
/// doc for more information.
///
/// > It may take a while for the attached tag bindings to be deleted after the folder is scheduled to be deleted.
///
/// ## Import
///
/// Folders can be imported using the folder's id, e.g.
///
/// * `folders/{{folder_id}}`
///
/// * `{{folder_id}}`
///
/// When using the `pulumi import` command, Folders can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:organizations/folder:Folder default {{folder_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:organizations/folder:Folder default folders/{{folder_id}}
/// ```
class Folder extends pulumi.CustomResource {
  /// Optional capabilities configured for this folder.
  late final pulumi.Output<List<String>> configuredCapabilities;
  /// Timestamp when the Folder was created. Assigned by the server.
  /// A timestamp in RFC3339 UTC "Zulu" format, accurate to nanoseconds. Example: "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> createTime;
  late final pulumi.Output<bool?> deletionProtection;
  /// The folder’s display name.
  /// A folder’s display name must be unique amongst its siblings, e.g. no two folders with the same parent can share the same display name. The display name must start and end with a letter or digit, may contain letters, digits, spaces, hyphens and underscores and can be no longer than 30 characters.
  late final pulumi.Output<String> displayName;
  /// The folder id from the name "folders/{folder_id}"
  late final pulumi.Output<String> folderId;
  /// The lifecycle state of the folder such as `ACTIVE` or `DELETE_REQUESTED`.
  late final pulumi.Output<String> lifecycleState;
  /// Management Project associated with this folder (if capability is enabled).
  late final pulumi.Output<String> managementProject;
  /// The resource name of the Folder. Its format is folders/{folder_id}.
  late final pulumi.Output<String> name;
  /// The resource name of the parent Folder or Organization.
  /// Must be of the form `folders/{folder_id}` or `organizations/{org_id}`.
  late final pulumi.Output<String> parent;
  /// A map of resource manager tags. Resource manager tag keys and values have the same definition as resource manager tags. Keys must be in the format tagKeys/{tag_key_id}, and values are in the format tagValues/456. The field is ignored when empty. The field is immutable and causes resource replacement when  mutated. This field is only set at create time and modifying this field after creation will trigger recreation. To apply tags to an existing resource, see the `gcp.tags.TagValue` resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [Folder].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Folder]. {@macro pulumi_organizations_folder_folder_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Folder(
    String name, {
    FolderArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:organizations/folder:Folder',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.configuredCapabilities = registerOutput<List<String>>('configuredCapabilities');
    this.createTime = registerOutput<String>('createTime');
    this.deletionProtection = registerOutput<bool?>('deletionProtection');
    this.displayName = registerOutput<String>('displayName');
    this.folderId = registerOutput<String>('folderId');
    this.lifecycleState = registerOutput<String>('lifecycleState');
    this.managementProject = registerOutput<String>('managementProject');
    this.name = registerOutput<String>('name');
    this.parent = registerOutput<String>('parent');
    this.tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [Folder] resource's state with the given [name] and [id].
  static Folder get(
    String name,
    pulumi.Input<String> id, {
    FolderState? state,
  }) {
    return Folder._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Folder._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:organizations/folder:Folder',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.configuredCapabilities = registerOutput<List<String>>('configuredCapabilities');
    this.createTime = registerOutput<String>('createTime');
    this.deletionProtection = registerOutput<bool?>('deletionProtection');
    this.displayName = registerOutput<String>('displayName');
    this.folderId = registerOutput<String>('folderId');
    this.lifecycleState = registerOutput<String>('lifecycleState');
    this.managementProject = registerOutput<String>('managementProject');
    this.name = registerOutput<String>('name');
    this.parent = registerOutput<String>('parent');
    this.tags = registerOutput<Map<String, String>?>('tags');
  }
}
