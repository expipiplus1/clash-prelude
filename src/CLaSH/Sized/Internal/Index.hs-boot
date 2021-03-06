{-|
Copyright  :  (C) 2015-2016, University of Twente
License    :  BSD2 (see the file LICENSE)
Maintainer :  Christiaan Baaij <christiaan.baaij@gmail.com>
-}

{-# LANGUAGE DataKinds       #-}
{-# LANGUAGE KindSignatures  #-}
{-# LANGUAGE RoleAnnotations #-}
module CLaSH.Sized.Internal.Index where

import GHC.TypeLits (KnownNat, Nat)

type role Index phantom
data Index :: Nat -> *

instance KnownNat n => Num (Index n)
instance KnownNat n => Enum (Index n)
