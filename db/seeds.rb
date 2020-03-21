# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database.."
Book.destroy_all
puts "Creating Books..."

memorias = Book.create(
  title: 'Memórias de uma Gueixa',
  author: 'Arthur Golden',
  year: '1997',
  pages: 448,
  photo: 'https://images-na.ssl-images-amazon.com/images/I/51BsOKpo5kL._SY346_.jpg',
  description: 'Memórias de uma Gueixa é um romance histórico escrito por Arthur Golden, publicado em 1997, em que é contada na primeira pessoa a história de uma gueixa em Gion, Kioto, no Japão, antes, durante e depois da Segunda Guerra Mundial',
  user_id: '1',
)

orgulho_preconceito = Book.create(
  title: 'Orgulho e Preconceito',
  author: 'Jane Austen',
  year: '1813',
  pages: 420,
  photo: 'https://www.record.com.br/wp-content/uploads/2019/11/18770-600x890.jpeg',
  description: 'A história de um amor improvável em uma época em que sentimentos poderiam não ser suficientes. Quando Elizabeth Bennet conhece o cobiçado Fitzwilliam Darcy, não hesita em julgá-lo arrogante e presunçoso, afinal ele parece desprezar sua companhia, assim como a de todo mundo, demonstrando um temperamento rude e orgulhoso, impossível de agradar. Após descobrir o envolvimento do detestável cavalheiro nos eventos que separaram sua querida irmã, Jane, do jovem Bingley, Elizabeth está determinada a odiá-lo ainda mais. Uma surpreendente reviravolta, porém, poderá provar que as primeiras impressões nem sempre são incontestáveis.',
  user_id: '1',
)

confissões = Book.create(
  title: 'Confissões do Crematório',
  author: 'Caitlin Doughty',
  year: '2014',
  pages: 260,
  photo: 'https://darkside.vteximg.com.br/arquivos/ids/167742-491-491/78-confissoes-do-crematorio-0.jpg?v=636802532970870000',
  description: '"Uma menina nunca esquece seu primeiro cadáver." – Caitlin Doughty Um livro para quem planeja morrer um dia. Morrer é a única certeza da vida. Então, por que evitamos tanto falar sobre ela? A morte é inevitável, sentimos muito. Mas pelo menos, como descobriu Caitlin Doughty, ficar a sete palmos do chão ainda é uma opção. ''Confissões do Crematório'' reúne histórias reais do dia a dia de uma casa funerária, inúmeras curiosidades e fatos históricos, mitológicos e filosóficos.',
  user_id: '1'
)

vida_imortal = Book.create(
  title: 'A Vida Imortal de Henrietta Lacks',
  author: 'Rebecca Skloot',
  year: '2010',
  pages: 381,
  photo: 'https://images-na.ssl-images-amazon.com/images/I/51JPO9fd5NL._SY346_.jpg',
  description: 'Passei anos contemplando essa foto, indagando que tipo de vida a retratada levava, o que teria acontecido com seus filhos e o que ela acharia de células de colo de seu útero vivendo para sempre - compradas, vendidas, embaladas e expedidas ao trilhões para laboratórios do mundo todo. Tentei imaginar como ela se sentiria se soubesse que suas células subiram nas primeiras missões espaciais, ou que elas ajudaram em alguns dos avanços mais importantes da medicina: quimioterapia, clonagem, mapeamento de genes, vacina contra pólio. Tenho certeza de que ela - como a maioria de nós - ficaria chocada se soubesse que há agora trilhões de suas células sendo reproduzidas em laboratórios, muito mais do que o número de células que um dia existiu em seu corpo.',
  user_id: '1'
)

confissões = Book.create(
  title: 'A Rebelde do Deserto',
  author: 'Alwyn Hamilton',
  year: '2015',
  pages: 314,
  photo: 'https://images-na.ssl-images-amazon.com/images/I/61gWMhfUPLL._SX346_BO1,204,203,200_.jpg',
  description: 'O destino do deserto está nas mãos de Amani Al’Hiza — uma garota feita de fogo e pólvora, com o dedo sempre no gatilho. O deserto de Miraji é governado por mortais, mas criaturas míticas rondam as áreas mais selvagens e remotas, e há boatos de que, em algum lugar, os djinnis ainda praticam magia.',
  user_id: '1'
)

lovecraft = Book.create(
  title: 'H.P. Lovecraft - Medo Clássico - Vol. 1',
  author: 'H.P Lovecraft',
  year: '2017',
  pages: 384,
  photo: 'https://img.travessa.com.br/livro/BA/1a/1a40ceb9-ef5a-4c3e-8d8e-6ec70652a93b.jpg',
  description: 'Uma seleção especial de contos e novelas do autor que revolucionou o terror e a ficção científica no século XX.  Se você também é um adorador do lado mais sombrio da literatura, junte-se ao culto a H.P. Lovecraft.Hoje em dia fica difícil imaginar a cultura pop sem a presença de Howard Phillips Lovecraft. Reconhecido como o legítimo sucessor de Edgar Allan Poe, Lovecraft passou a vida desenvolvendo seres e universos fantásticos. Assim como Tolkien, ele criou sua própria mitologia com deuses e entidades ancestrais.Seu terror cósmico, onde o bem e o mal independem de carma ou moralidade, influenciou muitos dos livros, filmes, bandas e games que a gente tanto ama.',
  user_id: '1'
)


puts "Generated #{Book.count} books!"
puts "seed finished! Remember to plant a tree and be happy!"
