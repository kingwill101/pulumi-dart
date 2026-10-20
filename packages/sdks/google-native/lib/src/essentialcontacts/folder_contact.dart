import 'package:pulumi/pulumi.dart' as pulumi;
import 'folder_contact_args.dart';

/// Adds a new contact for a resource.
/// Auto-naming is currently not supported for this resource.
class FolderContact extends pulumi.CustomResource {
  /// The email address to send notifications to. The email address does not need to be a Google Account.
  late final pulumi.Output<String> email;
  late final pulumi.Output<String> folderId;
  /// The preferred language for notifications, as a ISO 639-1 language code. See [Supported languages](https://cloud.google.com/resource-manager/docs/managing-notification-contacts#supported-languages) for a list of supported languages.
  late final pulumi.Output<String> languageTag;
  /// The identifier for the contact. Format: {resource_type}/{resource_id}/contacts/{contact_id}
  late final pulumi.Output<String> name;
  /// The categories of notifications that the contact will receive communications for.
  late final pulumi.Output<List<String>> notificationCategorySubscriptions;
  /// The last time the validation_state was updated, either manually or automatically. A contact is considered stale if its validation state was updated more than 1 year ago.
  late final pulumi.Output<String> validateTime;
  /// The validity of the contact. A contact is considered valid if it is the correct recipient for notifications for a particular resource.
  late final pulumi.Output<String> validationState;

  /// Creates a new [FolderContact].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FolderContact]. {@macro pulumi_essentialcontacts_v1_folder_contact_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FolderContact(
    String name, {
    FolderContactArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:essentialcontacts/v1:FolderContact',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '0.32.0', replaceOnChanges: ['folderId']).merge(options),
        ) {
    email = registerOutput<String>('email');
    folderId = registerOutput<String>('folderId');
    languageTag = registerOutput<String>('languageTag');
    this.name = registerOutput<String>('name');
    notificationCategorySubscriptions = registerOutput<List<String>>('notificationCategorySubscriptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    validateTime = registerOutput<String>('validateTime');
    validationState = registerOutput<String>('validationState');
  }

  /// Creates a typed reference to an existing [FolderContact] resource.
  FolderContact.reference(String urn)
    : super(
        'google-native:essentialcontacts/v1:FolderContact',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    email = registerOutput<String>('email');
    folderId = registerOutput<String>('folderId');
    languageTag = registerOutput<String>('languageTag');
    this.name = registerOutput<String>('name');
    notificationCategorySubscriptions = registerOutput<List<String>>('notificationCategorySubscriptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    validateTime = registerOutput<String>('validateTime');
    validationState = registerOutput<String>('validationState');
  }
}
