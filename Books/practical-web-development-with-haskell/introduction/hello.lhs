


> import Control.Monad 

> hello :: (MonadReader String m, MonadIO m) => m ()
> hello = do
>    name <- ask
>    liftIO $ putStrLn $ "Hello, " <> name <> "!"
>
> newtype AppT a = AppT
>    { unAppT :: ReaderT String IO a
>    } deriving (Applicative, Functor, Monad, MonadReader String, MonadIO)
> 
> main :: IO ()
> main = flip runReaderT "World" $ unAppT hello
