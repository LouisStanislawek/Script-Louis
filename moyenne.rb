raw_notes =
  [
    note_a = 10.5,
    tot_a = 16,
  ],
  [
    note_b = 11,
    tot_b = 16
  ],

  [
    note_c = 28,
    tot_c = 50

  ],
  [
    note_d = 76,
    tot_d = 100
  ],
  [
    note_e = 45.25,
    tot_e = 100
  ]


def note_converter(note, total)
  result = nil
  # note = 10.50
  # total = 16
  result = note.to_f / total.to_f
  result = result * 20
  return result
end

def array_of_notes_maker (array_of_notes)
  converted_notes = []
  array_of_notes.each do |notes|
    converted_notes << note_converter(notes[0], notes[1])
  end
  moyenne(converted_notes)
end

def moyenne (caca)
  puts caca.sum / caca.length
end

array_of_notes_maker(raw_notes)

# 1ere étape : en stock les notes et les totaux dans un tableau
# 2eme étape : on fait une boucle sur le tableau et on rempli un niuveau tanleau avec les notes sur 20
# 3eme etape : on fait la moyenne de toute les notes sur 20
