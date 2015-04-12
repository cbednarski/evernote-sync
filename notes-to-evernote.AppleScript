run application "Notes"
activate "Notes"

run application "Evernote"
activate "Evernote"

on create_note(n_title, n_body, n_created)
    tell application "Evernote"
        set new_note to create note title n_title with html n_body created n_created
    end tell
end create_note

tell application "Notes"
    set my_notes to every note

    repeat with n in notes
        my create_note(name of n, body of n as text, creation date of n)
    end repeat
end tell
