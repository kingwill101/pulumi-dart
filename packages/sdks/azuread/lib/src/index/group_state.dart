// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_dynamic_membership.dart';

/// Input properties used for looking up and filtering Group resources.
class GroupState {
  /// The object IDs of administrative units in which the group is a member. If specified, new groups will be created in the scope of the first administrative unit and added to the others. If empty, new groups will be created at the tenant level.
  ///
  /// > **Caution** When using the azuread.AdministrativeUnitMember resource, or the `members` property of the azuread.AdministrativeUnit resource, to manage Administrative Unit membership for a group, you will need to use an `ignore_changes = [administrative_unit_ids]` lifecycle meta argument for the `azuread.Group` resource, in order to avoid a persistent diff.
  final pulumi.Input<List<String>>? administrativeUnitIds;
  /// Indicates whether this group can be assigned to an Azure Active Directory role. Defaults to `false`. Can only be set to `true` for security-enabled groups. Changing this forces a new resource to be created.
  final pulumi.Input<bool>? assignableToRole;
  /// Indicates whether new members added to the group will be auto-subscribed to receive email notifications. Can only be set for Unified groups.
  ///
  /// > **Known Permissions Issue** The `auto_subscribe_new_members` property can only be set when authenticating as a Member user of the tenant and _not_ when authenticating as a Guest user or as a service principal. Please see the [Microsoft Graph Known Issues](https://docs.microsoft.com/en-us/graph/known-issues#groups) documentation.
  final pulumi.Input<bool>? autoSubscribeNewMembers;
  /// A set of behaviors for a Microsoft 365 group. Possible values are `AllowOnlyMembersToPost`, `HideGroupInOutlook`, `SkipExchangeInstantOn`, `SubscribeMembersToCalendarEventsDisabled`, `SubscribeNewGroupMembers` and `WelcomeEmailDisabled`. See [official documentation](https://docs.microsoft.com/en-us/graph/group-set-options) for more details. Changing this forces a new resource to be created.
  final pulumi.Input<List<String>>? behaviors;
  /// The description for the group.
  final pulumi.Input<String>? description;
  /// The display name for the group.
  final pulumi.Input<String>? displayName;
  /// A `dynamic_membership` block as documented below. Required when `types` contains `DynamicMembership`. Cannot be used with the `members` property.
  final pulumi.Input<GroupDynamicMembership>? dynamicMembership;
  /// Indicates whether people external to the organization can send messages to the group. Can only be set for Unified groups.
  ///
  /// > **Known Permissions Issue** The `external_senders_allowed` property can only be set when authenticating as a Member user of the tenant and _not_ when authenticating as a Guest user or as a service principal. Please see the [Microsoft Graph Known Issues](https://docs.microsoft.com/en-us/graph/known-issues#groups) documentation.
  final pulumi.Input<bool>? externalSendersAllowed;
  /// Indicates whether the group is displayed in certain parts of the Outlook user interface: in the Address Book, in address lists for selecting message recipients, and in the Browse Groups dialog for searching groups. Can only be set for Unified groups.
  ///
  /// > **Known Permissions Issue** The `hide_from_address_lists` property can only be set when authenticating as a Member user of the tenant and _not_ when authenticating as a Guest user or as a service principal. Please see the [Microsoft Graph Known Issues](https://docs.microsoft.com/en-us/graph/known-issues#groups) documentation.
  final pulumi.Input<bool>? hideFromAddressLists;
  /// Indicates whether the group is displayed in Outlook clients, such as Outlook for Windows and Outlook on the web. Can only be set for Unified groups.
  ///
  /// > **Known Permissions Issue** The `hide_from_outlook_clients` property can only be set when authenticating as a Member user of the tenant and _not_ when authenticating as a Guest user or as a service principal. Please see the [Microsoft Graph Known Issues](https://docs.microsoft.com/en-us/graph/known-issues#groups) documentation.
  final pulumi.Input<bool>? hideFromOutlookClients;
  /// The SMTP address for the group.
  final pulumi.Input<String>? mail;
  /// Whether the group is a mail enabled, with a shared group mailbox. At least one of `mail_enabled` or `security_enabled` must be specified. Only Microsoft 365 groups can be mail enabled (see the `types` property).
  final pulumi.Input<bool>? mailEnabled;
  /// The mail alias for the group, unique in the organisation. Required for mail-enabled groups. Changing this forces a new resource to be created.
  final pulumi.Input<String>? mailNickname;
  /// A set of members who should be present in this group. Supported object types are Users, Groups or Service Principals. Cannot be used with the `dynamic_membership` block.
  ///
  /// !> **Warning** Do not use the `members` property at the same time as the azuread.GroupMember resource for the same group. Doing so will cause a conflict and group members will be removed.
  final pulumi.Input<List<String>>? members;
  /// The object ID of the group.
  final pulumi.Input<String>? objectId;
  /// The on-premises FQDN, also called dnsDomainName, synchronised from the on-premises directory when Azure AD Connect is used.
  final pulumi.Input<String>? onpremisesDomainName;
  /// The on-premises group type that the AAD group will be written as, when writeback is enabled. Possible values are `UniversalDistributionGroup`, `UniversalMailEnabledSecurityGroup`, or `UniversalSecurityGroup`.
  final pulumi.Input<String>? onpremisesGroupType;
  /// The on-premises NetBIOS name, synchronised from the on-premises directory when Azure AD Connect is used.
  final pulumi.Input<String>? onpremisesNetbiosName;
  /// The on-premises SAM account name, synchronised from the on-premises directory when Azure AD Connect is used.
  final pulumi.Input<String>? onpremisesSamAccountName;
  /// The on-premises security identifier (SID), synchronised from the on-premises directory when Azure AD Connect is used.
  final pulumi.Input<String>? onpremisesSecurityIdentifier;
  /// Whether this group is synchronised from an on-premises directory (`true`), no longer synchronised (`false`), or has never been synchronised (`null`).
  final pulumi.Input<bool>? onpremisesSyncEnabled;
  /// A set of object IDs of principals that will be granted ownership of the group. Supported object types are users or service principals. By default, the principal being used to execute Terraform is assigned as the sole owner. Groups cannot be created with no owners or have all their owners removed.
  ///
  /// > **Group Ownership**  It's recommended to always specify one or more group owners, including the principal being used to execute Terraform, such as in the example above. When removing group owners, if a user principal has been assigned ownership, the last user cannot be removed as an owner. Microsoft 365 groups are required to always have at least one owner which _must be a user_ (i.e. not a service principal).
  final pulumi.Input<List<String>>? owners;
  /// The preferred language for a Microsoft 365 group, in ISO 639-1 notation.
  final pulumi.Input<String>? preferredLanguage;
  /// If `true`, will return an error if an existing group is found with the same name. Defaults to `false`.
  final pulumi.Input<bool>? preventDuplicateNames;
  /// A set of provisioning options for a Microsoft 365 group. The only supported value is `Team`. See [official documentation](https://docs.microsoft.com/en-us/graph/group-set-options) for details. Changing this forces a new resource to be created.
  final pulumi.Input<List<String>>? provisioningOptions;
  /// List of email addresses for the group that direct to the same group mailbox.
  final pulumi.Input<List<String>>? proxyAddresses;
  /// Whether the group is a security group for controlling access to in-app resources. At least one of `security_enabled` or `mail_enabled` must be specified. A Microsoft 365 group can be security enabled _and_ mail enabled (see the `types` property).
  final pulumi.Input<bool>? securityEnabled;
  /// The colour theme for a Microsoft 365 group. Possible values are `Blue`, `Green`, `Orange`, `Pink`, `Purple`, `Red` or `Teal`. By default, no theme is set.
  final pulumi.Input<String>? theme;
  /// A set of group types to configure for the group. Supported values are `DynamicMembership`, which denotes a group with dynamic membership, and `Unified`, which specifies a Microsoft 365 group. Required when `mail_enabled` is true. Changing this forces a new resource to be created.
  ///
  /// > **Supported Group Types** At present, only security groups and Microsoft 365 groups can be created or managed with this resource. Distribution groups and mail-enabled security groups are not supported. Microsoft 365 groups can be security-enabled.
  final pulumi.Input<List<String>>? types;
  /// The group join policy and group content visibility. Possible values are `Private`, `Public`, or `Hiddenmembership`. Only Microsoft 365 groups can have `Hiddenmembership` visibility and this value must be set when the group is created. By default, security groups will receive `Private` visibility and Microsoft 365 groups will receive `Public` visibility.
  ///
  /// > **Group Name Uniqueness** Group names are not unique within Azure Active Directory. Use the `prevent_duplicate_names` argument to check for existing groups if you want to avoid name collisions.
  final pulumi.Input<String>? visibility;
  /// Whether the group will be written back to the configured on-premises Active Directory when Azure AD Connect is used.
  final pulumi.Input<bool>? writebackEnabled;

  /// Creates a new [GroupState].
  /// [administrativeUnitIds] The object IDs of administrative units in which the group is a member. If specified, new groups will be created in the scope of the first administrative unit and added to the others. If empty, new groups will be created at the tenant level.
  /// [assignableToRole] Indicates whether this group can be assigned to an Azure Active Directory role. Defaults to `false`. Can only be set to `true` for security-enabled groups. Changing this forces a new resource to be created.
  /// [autoSubscribeNewMembers] Indicates whether new members added to the group will be auto-subscribed to receive email notifications. Can only be set for Unified groups.
  /// [behaviors] A set of behaviors for a Microsoft 365 group. Possible values are `AllowOnlyMembersToPost`, `HideGroupInOutlook`, `SkipExchangeInstantOn`, `SubscribeMembersToCalendarEventsDisabled`, `SubscribeNewGroupMembers` and `WelcomeEmailDisabled`. See [official documentation](https://docs.microsoft.com/en-us/graph/group-set-options) for more details. Changing this forces a new resource to be created.
  /// [description] The description for the group.
  /// [displayName] The display name for the group.
  /// [dynamicMembership] A `dynamic_membership` block as documented below. Required when `types` contains `DynamicMembership`. Cannot be used with the `members` property.
  /// [externalSendersAllowed] Indicates whether people external to the organization can send messages to the group. Can only be set for Unified groups.
  /// [hideFromAddressLists] Indicates whether the group is displayed in certain parts of the Outlook user interface: in the Address Book, in address lists for selecting message recipients, and in the Browse Groups dialog for searching groups. Can only be set for Unified groups.
  /// [hideFromOutlookClients] Indicates whether the group is displayed in Outlook clients, such as Outlook for Windows and Outlook on the web. Can only be set for Unified groups.
  /// [mail] The SMTP address for the group.
  /// [mailEnabled] Whether the group is a mail enabled, with a shared group mailbox. At least one of `mail_enabled` or `security_enabled` must be specified. Only Microsoft 365 groups can be mail enabled (see the `types` property).
  /// [mailNickname] The mail alias for the group, unique in the organisation. Required for mail-enabled groups. Changing this forces a new resource to be created.
  /// [members] A set of members who should be present in this group. Supported object types are Users, Groups or Service Principals. Cannot be used with the `dynamic_membership` block.
  /// [objectId] The object ID of the group.
  /// [onpremisesDomainName] The on-premises FQDN, also called dnsDomainName, synchronised from the on-premises directory when Azure AD Connect is used.
  /// [onpremisesGroupType] The on-premises group type that the AAD group will be written as, when writeback is enabled. Possible values are `UniversalDistributionGroup`, `UniversalMailEnabledSecurityGroup`, or `UniversalSecurityGroup`.
  /// [onpremisesNetbiosName] The on-premises NetBIOS name, synchronised from the on-premises directory when Azure AD Connect is used.
  /// [onpremisesSamAccountName] The on-premises SAM account name, synchronised from the on-premises directory when Azure AD Connect is used.
  /// [onpremisesSecurityIdentifier] The on-premises security identifier (SID), synchronised from the on-premises directory when Azure AD Connect is used.
  /// [onpremisesSyncEnabled] Whether this group is synchronised from an on-premises directory (`true`), no longer synchronised (`false`), or has never been synchronised (`null`).
  /// [owners] A set of object IDs of principals that will be granted ownership of the group. Supported object types are users or service principals. By default, the principal being used to execute Terraform is assigned as the sole owner. Groups cannot be created with no owners or have all their owners removed.
  /// [preferredLanguage] The preferred language for a Microsoft 365 group, in ISO 639-1 notation.
  /// [preventDuplicateNames] If `true`, will return an error if an existing group is found with the same name. Defaults to `false`.
  /// [provisioningOptions] A set of provisioning options for a Microsoft 365 group. The only supported value is `Team`. See [official documentation](https://docs.microsoft.com/en-us/graph/group-set-options) for details. Changing this forces a new resource to be created.
  /// [proxyAddresses] List of email addresses for the group that direct to the same group mailbox.
  /// [securityEnabled] Whether the group is a security group for controlling access to in-app resources. At least one of `security_enabled` or `mail_enabled` must be specified. A Microsoft 365 group can be security enabled _and_ mail enabled (see the `types` property).
  /// [theme] The colour theme for a Microsoft 365 group. Possible values are `Blue`, `Green`, `Orange`, `Pink`, `Purple`, `Red` or `Teal`. By default, no theme is set.
  /// [types] A set of group types to configure for the group. Supported values are `DynamicMembership`, which denotes a group with dynamic membership, and `Unified`, which specifies a Microsoft 365 group. Required when `mail_enabled` is true. Changing this forces a new resource to be created.
  /// [visibility] The group join policy and group content visibility. Possible values are `Private`, `Public`, or `Hiddenmembership`. Only Microsoft 365 groups can have `Hiddenmembership` visibility and this value must be set when the group is created. By default, security groups will receive `Private` visibility and Microsoft 365 groups will receive `Public` visibility.
  /// [writebackEnabled] Whether the group will be written back to the configured on-premises Active Directory when Azure AD Connect is used.
  GroupState({
    pulumi.Output<List<String>>? administrativeUnitIds,
    pulumi.Output<bool>? assignableToRole,
    pulumi.Output<bool>? autoSubscribeNewMembers,
    pulumi.Output<List<String>>? behaviors,
    pulumi.Output<String>? description,
    pulumi.Output<String>? displayName,
    pulumi.Output<GroupDynamicMembership>? dynamicMembership,
    pulumi.Output<bool>? externalSendersAllowed,
    pulumi.Output<bool>? hideFromAddressLists,
    pulumi.Output<bool>? hideFromOutlookClients,
    pulumi.Output<String>? mail,
    pulumi.Output<bool>? mailEnabled,
    pulumi.Output<String>? mailNickname,
    pulumi.Output<List<String>>? members,
    pulumi.Output<String>? objectId,
    pulumi.Output<String>? onpremisesDomainName,
    pulumi.Output<String>? onpremisesGroupType,
    pulumi.Output<String>? onpremisesNetbiosName,
    pulumi.Output<String>? onpremisesSamAccountName,
    pulumi.Output<String>? onpremisesSecurityIdentifier,
    pulumi.Output<bool>? onpremisesSyncEnabled,
    pulumi.Output<List<String>>? owners,
    pulumi.Output<String>? preferredLanguage,
    pulumi.Output<bool>? preventDuplicateNames,
    pulumi.Output<List<String>>? provisioningOptions,
    pulumi.Output<List<String>>? proxyAddresses,
    pulumi.Output<bool>? securityEnabled,
    pulumi.Output<String>? theme,
    pulumi.Output<List<String>>? types,
    pulumi.Output<String>? visibility,
    pulumi.Output<bool>? writebackEnabled,
  }) :
      administrativeUnitIds = pulumi.Input.asOptionalInput<List<String>>(administrativeUnitIds),
      assignableToRole = pulumi.Input.asOptionalInput<bool>(assignableToRole),
      autoSubscribeNewMembers = pulumi.Input.asOptionalInput<bool>(autoSubscribeNewMembers),
      behaviors = pulumi.Input.asOptionalInput<List<String>>(behaviors),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      dynamicMembership = pulumi.Input.asOptionalInput<GroupDynamicMembership>(dynamicMembership),
      externalSendersAllowed = pulumi.Input.asOptionalInput<bool>(externalSendersAllowed),
      hideFromAddressLists = pulumi.Input.asOptionalInput<bool>(hideFromAddressLists),
      hideFromOutlookClients = pulumi.Input.asOptionalInput<bool>(hideFromOutlookClients),
      mail = pulumi.Input.asOptionalInput<String>(mail),
      mailEnabled = pulumi.Input.asOptionalInput<bool>(mailEnabled),
      mailNickname = pulumi.Input.asOptionalInput<String>(mailNickname),
      members = pulumi.Input.asOptionalInput<List<String>>(members),
      objectId = pulumi.Input.asOptionalInput<String>(objectId),
      onpremisesDomainName = pulumi.Input.asOptionalInput<String>(onpremisesDomainName),
      onpremisesGroupType = pulumi.Input.asOptionalInput<String>(onpremisesGroupType),
      onpremisesNetbiosName = pulumi.Input.asOptionalInput<String>(onpremisesNetbiosName),
      onpremisesSamAccountName = pulumi.Input.asOptionalInput<String>(onpremisesSamAccountName),
      onpremisesSecurityIdentifier = pulumi.Input.asOptionalInput<String>(onpremisesSecurityIdentifier),
      onpremisesSyncEnabled = pulumi.Input.asOptionalInput<bool>(onpremisesSyncEnabled),
      owners = pulumi.Input.asOptionalInput<List<String>>(owners),
      preferredLanguage = pulumi.Input.asOptionalInput<String>(preferredLanguage),
      preventDuplicateNames = pulumi.Input.asOptionalInput<bool>(preventDuplicateNames),
      provisioningOptions = pulumi.Input.asOptionalInput<List<String>>(provisioningOptions),
      proxyAddresses = pulumi.Input.asOptionalInput<List<String>>(proxyAddresses),
      securityEnabled = pulumi.Input.asOptionalInput<bool>(securityEnabled),
      theme = pulumi.Input.asOptionalInput<String>(theme),
      types = pulumi.Input.asOptionalInput<List<String>>(types),
      visibility = pulumi.Input.asOptionalInput<String>(visibility),
      writebackEnabled = pulumi.Input.asOptionalInput<bool>(writebackEnabled);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administrativeUnitIds': ?administrativeUnitIds,
      'assignableToRole': ?assignableToRole,
      'autoSubscribeNewMembers': ?autoSubscribeNewMembers,
      'behaviors': ?behaviors,
      'description': ?description,
      'displayName': ?displayName,
      'dynamicMembership': ?pulumi.Input.mapOptionalInputValue<GroupDynamicMembership, Map<String, dynamic>>(dynamicMembership, (value) => value.toMap()),
      'externalSendersAllowed': ?externalSendersAllowed,
      'hideFromAddressLists': ?hideFromAddressLists,
      'hideFromOutlookClients': ?hideFromOutlookClients,
      'mail': ?mail,
      'mailEnabled': ?mailEnabled,
      'mailNickname': ?mailNickname,
      'members': ?members,
      'objectId': ?objectId,
      'onpremisesDomainName': ?onpremisesDomainName,
      'onpremisesGroupType': ?onpremisesGroupType,
      'onpremisesNetbiosName': ?onpremisesNetbiosName,
      'onpremisesSamAccountName': ?onpremisesSamAccountName,
      'onpremisesSecurityIdentifier': ?onpremisesSecurityIdentifier,
      'onpremisesSyncEnabled': ?onpremisesSyncEnabled,
      'owners': ?owners,
      'preferredLanguage': ?preferredLanguage,
      'preventDuplicateNames': ?preventDuplicateNames,
      'provisioningOptions': ?provisioningOptions,
      'proxyAddresses': ?proxyAddresses,
      'securityEnabled': ?securityEnabled,
      'theme': ?theme,
      'types': ?types,
      'visibility': ?visibility,
      'writebackEnabled': ?writebackEnabled,
    };
  }

  factory GroupState.fromMap(Map<String, dynamic> map) {
    return GroupState(
      administrativeUnitIds: map['administrativeUnitIds'] == null ? null : pulumi.Output.create<List<String>>((map['administrativeUnitIds'] as List).cast<String>()),
      assignableToRole: map['assignableToRole'] == null ? null : pulumi.Output.create<bool>(map['assignableToRole'] as bool),
      autoSubscribeNewMembers: map['autoSubscribeNewMembers'] == null ? null : pulumi.Output.create<bool>(map['autoSubscribeNewMembers'] as bool),
      behaviors: map['behaviors'] == null ? null : pulumi.Output.create<List<String>>((map['behaviors'] as List).cast<String>()),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      dynamicMembership: map['dynamicMembership'] == null ? null : pulumi.Output.create<GroupDynamicMembership>(GroupDynamicMembership.fromMap((map['dynamicMembership'] as Map).cast<String, dynamic>())),
      externalSendersAllowed: map['externalSendersAllowed'] == null ? null : pulumi.Output.create<bool>(map['externalSendersAllowed'] as bool),
      hideFromAddressLists: map['hideFromAddressLists'] == null ? null : pulumi.Output.create<bool>(map['hideFromAddressLists'] as bool),
      hideFromOutlookClients: map['hideFromOutlookClients'] == null ? null : pulumi.Output.create<bool>(map['hideFromOutlookClients'] as bool),
      mail: map['mail'] == null ? null : pulumi.Output.create<String>(map['mail'] as String),
      mailEnabled: map['mailEnabled'] == null ? null : pulumi.Output.create<bool>(map['mailEnabled'] as bool),
      mailNickname: map['mailNickname'] == null ? null : pulumi.Output.create<String>(map['mailNickname'] as String),
      members: map['members'] == null ? null : pulumi.Output.create<List<String>>((map['members'] as List).cast<String>()),
      objectId: map['objectId'] == null ? null : pulumi.Output.create<String>(map['objectId'] as String),
      onpremisesDomainName: map['onpremisesDomainName'] == null ? null : pulumi.Output.create<String>(map['onpremisesDomainName'] as String),
      onpremisesGroupType: map['onpremisesGroupType'] == null ? null : pulumi.Output.create<String>(map['onpremisesGroupType'] as String),
      onpremisesNetbiosName: map['onpremisesNetbiosName'] == null ? null : pulumi.Output.create<String>(map['onpremisesNetbiosName'] as String),
      onpremisesSamAccountName: map['onpremisesSamAccountName'] == null ? null : pulumi.Output.create<String>(map['onpremisesSamAccountName'] as String),
      onpremisesSecurityIdentifier: map['onpremisesSecurityIdentifier'] == null ? null : pulumi.Output.create<String>(map['onpremisesSecurityIdentifier'] as String),
      onpremisesSyncEnabled: map['onpremisesSyncEnabled'] == null ? null : pulumi.Output.create<bool>(map['onpremisesSyncEnabled'] as bool),
      owners: map['owners'] == null ? null : pulumi.Output.create<List<String>>((map['owners'] as List).cast<String>()),
      preferredLanguage: map['preferredLanguage'] == null ? null : pulumi.Output.create<String>(map['preferredLanguage'] as String),
      preventDuplicateNames: map['preventDuplicateNames'] == null ? null : pulumi.Output.create<bool>(map['preventDuplicateNames'] as bool),
      provisioningOptions: map['provisioningOptions'] == null ? null : pulumi.Output.create<List<String>>((map['provisioningOptions'] as List).cast<String>()),
      proxyAddresses: map['proxyAddresses'] == null ? null : pulumi.Output.create<List<String>>((map['proxyAddresses'] as List).cast<String>()),
      securityEnabled: map['securityEnabled'] == null ? null : pulumi.Output.create<bool>(map['securityEnabled'] as bool),
      theme: map['theme'] == null ? null : pulumi.Output.create<String>(map['theme'] as String),
      types: map['types'] == null ? null : pulumi.Output.create<List<String>>((map['types'] as List).cast<String>()),
      visibility: map['visibility'] == null ? null : pulumi.Output.create<String>(map['visibility'] as String),
      writebackEnabled: map['writebackEnabled'] == null ? null : pulumi.Output.create<bool>(map['writebackEnabled'] as bool),
    );
  }
}

