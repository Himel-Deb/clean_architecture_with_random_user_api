import 'name_entity.dart';
import 'location_entity.dart';
import 'login_entity.dart';
import 'dob_entity.dart';
import 'id_entity.dart';
import 'picture_entity.dart';

class UserEntity {
  final String gender;
  final NameEntity name;
  final LocationEntity location;
  final String email;
  final LoginEntity login;
  final DobEntity dob;
  final DobEntity registered;
  final String phone;
  final String cell;
  final IdEntity id;
  final PictureEntity picture;
  final String nat;

  const UserEntity({
    required this.gender,
    required this.name,
    required this.location,
    required this.email,
    required this.login,
    required this.dob,
    required this.registered,
    required this.phone,
    required this.cell,
    required this.id,
    required this.picture,
    required this.nat,
  });
} 