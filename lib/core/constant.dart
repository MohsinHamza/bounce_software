class Endpoints {
  static String base = "https://virtserver.swaggerhub.com/Bounce_Alerts/BounceAppServices/1.0.0";
  static String userProfile = "/user/profile";

  //notifications endpoints
  static String notificationTopics = "/notifications/server/{ID}/topics";
  static String notificationFilters = "/notifications/server/{ID}/filters";
  static String notificationSubscriptions = "/notifications/subscriptions";
  static String notificationSubscription = "/notifications/subscription";

  //discord
  static String discordServers = "/discord/servers";
  static String discordServer = "/discord/server/{ID}";
  static String discordServerCategories = "/discord/server/{ID}/categories";
  static String discordServerCategoryDetail = "/discord/server/{ID}/category/{ID2}";
  static String discordServerChannels = "/discord/server/{ID}/channels";
  static String discordServerUsers = "/discord/server/{ID}/users";
  static String discordServerRoles = "/discord/server/{ID}/roles";
}
