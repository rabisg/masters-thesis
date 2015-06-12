data Posting doc p where
  Posting :: Document doc p
          => { postingDocId :: doc
             -- ^ unique document id
             , posting      :: p
             -- ^ associated data corresponding to this term
             } -> Posting doc p
