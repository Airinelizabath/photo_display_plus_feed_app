
class User {
  final int id;
  final String name;
  final String uname;
  final String photoUrl;
  final String bio;
  final String followers;
  final String following;
  final String location;
  final String photosUrl;
  final String nfphotos;

   User(
      {
        this.id,
        this.name,
        this.uname,
        this.photoUrl,
        this.bio,
        this.followers,
        this.following,
        this.location,
        this.photosUrl,
        this.nfphotos,
      }
      );
}

final User cuser = User(id: 0, name:'Brian Cook',uname:'Brian', photoUrl:'assets/image/4.jpg',bio:'Student of Graphic Design. Passionate about photography.culture and rock music, Tim is not my father',followers:'2232',following:'351',location:'Warsaw, Poland',nfphotos: '4545');
final User  anna= User(id: 1, name:'Anna May',uname:'Anna', photoUrl:'assets/image/1.jpg',bio:'abxabs',followers:'1212',following:'2323',location:',avs,Iceland',nfphotos: '4545');
final User steve = User(id: 2, name:'Steve Irvin',uname:'Steve', photoUrl:'assets/image/3.jpg',bio:'AMNXNASJ',followers:'2232',following:'351',location:'New York, USA',nfphotos: '4545');
final User nico = User(id: 3, name:'Nico William',uname:'Nico', photoUrl:'assets/image/2.jpg',bio:'bvhxvj',followers:'2232',following:'351',location:'asxn,Iceland',nfphotos: '4545');