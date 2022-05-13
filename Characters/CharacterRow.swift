import SwiftUI
import Kingfisher

struct CharacterRow: View {
    
    var character: MarvelCharacter
    
    var body: some View {
        VStack {
            HStack {
                KFImage(character.thumbnail?.getImageURL())
                    .resizable()
                    .frame(width: 32.0, height: 32.0)
                    .cornerRadius(6.0)
                Text(character.name ?? "Unknown")
                Text(String(character.id ?? -1))
            }
        }
    }
}

struct CharacterRow_Previews: PreviewProvider {
    static var previews: some View {
        CharacterRow(character: MarvelCharacter.ironMan)
    }
}
