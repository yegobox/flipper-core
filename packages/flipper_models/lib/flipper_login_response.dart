library flipper_models;

class LoginResponse {
  LoginResponse({
    this.token,
    this.email,
    this.synced,
    this.name,
    this.newUser,
    this.avatar,
    this.id,
    this.subscription,
    this.expiresAt,
  });

  String token;
  String email;
  int synced;
  String name;
  bool newUser;
  dynamic avatar;
  int id;
  dynamic subscription;
  dynamic expiresAt;
}
